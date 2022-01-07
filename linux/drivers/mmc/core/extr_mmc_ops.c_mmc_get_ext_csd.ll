; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_get_ext_csd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_get_ext_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMC_SEND_EXT_CSD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_get_ext_csd(%struct.mmc_card* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = icmp ne %struct.mmc_card* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %10
  %17 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %18 = call i32 @mmc_can_ext_csd(%struct.mmc_card* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 512, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %23
  %32 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %33 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_SEND_EXT_CSD, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @mmc_send_cxd_data(%struct.mmc_card* %32, i32 %35, i32 %36, i32* %37, i32 512)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @kfree(i32* %42)
  br label %47

44:                                               ; preds = %31
  %45 = load i32*, i32** %7, align 8
  %46 = load i32**, i32*** %5, align 8
  store i32* %45, i32** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %28, %20, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mmc_can_ext_csd(%struct.mmc_card*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mmc_send_cxd_data(%struct.mmc_card*, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
