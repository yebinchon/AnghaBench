; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_fdb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_fdb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { i32 }
%struct.b53_arl_entry = type { i32 }

@ARL_SRCH_STDN = common dso_local global i32 0, align 4
@B53_ARLIO_PAGE = common dso_local global i32 0, align 4
@B53_ARL_SRCH_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_fdb_dump(%struct.dsa_switch* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.b53_device*, align 8
  %11 = alloca [2 x %struct.b53_arl_entry], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 0
  %17 = load %struct.b53_device*, %struct.b53_device** %16, align 8
  store %struct.b53_device* %17, %struct.b53_device** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @ARL_SRCH_STDN, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.b53_device*, %struct.b53_device** %10, align 8
  %20 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %21 = load i32, i32* @B53_ARL_SRCH_CTL, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @b53_write8(%struct.b53_device* %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %75, %4
  %25 = load %struct.b53_device*, %struct.b53_device** %10, align 8
  %26 = call i32 @b53_arl_search_wait(%struct.b53_device* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %80

31:                                               ; preds = %24
  %32 = load %struct.b53_device*, %struct.b53_device** %10, align 8
  %33 = getelementptr inbounds [2 x %struct.b53_arl_entry], [2 x %struct.b53_arl_entry]* %11, i64 0, i64 0
  %34 = call i32 @b53_arl_search_rd(%struct.b53_device* %32, i32 0, %struct.b53_arl_entry* %33)
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds [2 x %struct.b53_arl_entry], [2 x %struct.b53_arl_entry]* %11, i64 0, i64 0
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @b53_fdb_copy(i32 %35, %struct.b53_arl_entry* %36, i32* %37, i8* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %80

44:                                               ; preds = %31
  %45 = load %struct.b53_device*, %struct.b53_device** %10, align 8
  %46 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.b53_device*, %struct.b53_device** %10, align 8
  %51 = getelementptr inbounds [2 x %struct.b53_arl_entry], [2 x %struct.b53_arl_entry]* %11, i64 0, i64 1
  %52 = call i32 @b53_arl_search_rd(%struct.b53_device* %50, i32 1, %struct.b53_arl_entry* %51)
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds [2 x %struct.b53_arl_entry], [2 x %struct.b53_arl_entry]* %11, i64 0, i64 1
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @b53_fdb_copy(i32 %53, %struct.b53_arl_entry* %54, i32* %55, i8* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %80

62:                                               ; preds = %49
  %63 = getelementptr inbounds [2 x %struct.b53_arl_entry], [2 x %struct.b53_arl_entry]* %11, i64 0, i64 0
  %64 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds [2 x %struct.b53_arl_entry], [2 x %struct.b53_arl_entry]* %11, i64 0, i64 1
  %69 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %79

73:                                               ; preds = %67, %62
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = icmp ult i32 %76, 1024
  br i1 %78, label %24, label %79

79:                                               ; preds = %75, %72
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %60, %42, %29
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_arl_search_wait(%struct.b53_device*) #1

declare dso_local i32 @b53_arl_search_rd(%struct.b53_device*, i32, %struct.b53_arl_entry*) #1

declare dso_local i32 @b53_fdb_copy(i32, %struct.b53_arl_entry*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
