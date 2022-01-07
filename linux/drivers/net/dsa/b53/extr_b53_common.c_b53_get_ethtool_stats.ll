; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { i32 }
%struct.b53_mib_desc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.b53_device*, align 8
  %8 = alloca %struct.b53_mib_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.b53_mib_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  %16 = load %struct.b53_device*, %struct.b53_device** %15, align 8
  store %struct.b53_device* %16, %struct.b53_device** %7, align 8
  %17 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %18 = call %struct.b53_mib_desc* @b53_get_mib(%struct.b53_device* %17)
  store %struct.b53_mib_desc* %18, %struct.b53_mib_desc** %8, align 8
  %19 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %20 = call i32 @b53_get_mib_size(%struct.b53_device* %19)
  store i32 %20, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %21 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %22 = call i64 @is5365(%struct.b53_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 8, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24, %3
  %29 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %30 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %68, %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %37, i64 %39
  store %struct.b53_mib_desc* %40, %struct.b53_mib_desc** %10, align 8
  %41 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %10, align 8
  %42 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @B53_MIB_PAGE(i32 %47)
  %49 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %10, align 8
  %50 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @b53_read64(%struct.b53_device* %46, i32 %48, i32 %51, i64* %12)
  br label %62

53:                                               ; preds = %36
  %54 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @B53_MIB_PAGE(i32 %55)
  %57 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %10, align 8
  %58 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @b53_read32(%struct.b53_device* %54, i32 %56, i32 %59, i64* %13)
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %53, %45
  %63 = load i64, i64* %12, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %63, i64* %67, align 8
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %32

71:                                               ; preds = %32
  %72 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %73 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  ret void
}

declare dso_local %struct.b53_mib_desc* @b53_get_mib(%struct.b53_device*) #1

declare dso_local i32 @b53_get_mib_size(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b53_read64(%struct.b53_device*, i32, i32, i64*) #1

declare dso_local i32 @B53_MIB_PAGE(i32) #1

declare dso_local i32 @b53_read32(%struct.b53_device*, i32, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
