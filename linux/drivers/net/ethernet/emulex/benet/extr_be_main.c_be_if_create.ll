; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_if_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_if_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i8*, i8*, i8* }

@BE_IF_FLAGS_RSS = common dso_local global i32 0, align 4
@BE_IF_FLAGS_DEFQ_RSS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_if_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_if_create(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %7 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %8 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %11 = call i32 @be_if_cap_flags(%struct.be_adapter* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = call i32 @be_max_uc(%struct.be_adapter* %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kcalloc(i32 %13, i32 1, i32 %14)
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %81

25:                                               ; preds = %1
  %26 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %27 = call i32 @be_max_mc(%struct.be_adapter* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kcalloc(i32 %27, i32 1, i32 %28)
  %30 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %81

39:                                               ; preds = %25
  %40 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %41 = call i32 @be_max_uc(%struct.be_adapter* %40)
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kcalloc(i32 %41, i32 1, i32 %42)
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %81

53:                                               ; preds = %39
  %54 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %60 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = call i32 @be_if_cap_flags(%struct.be_adapter* %70)
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %73, i32 0, i32 1
  %75 = call i32 @be_cmd_if_create(%struct.be_adapter* %69, i32 %71, i32 %72, i32* %74, i32 0)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %78, %50, %36, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @be_if_cap_flags(%struct.be_adapter*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @be_max_uc(%struct.be_adapter*) #1

declare dso_local i32 @be_max_mc(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_if_create(%struct.be_adapter*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
