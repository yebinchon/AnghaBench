; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_init_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_init_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.sdio_func** }
%struct.sdio_func = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SDIO_MAX_FUNCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMC_QUIRK_NONSTD_SDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @sdio_init_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_init_func(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdio_func*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SDIO_MAX_FUNCS, align 4
  %10 = icmp ugt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %19 = call %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card* %18)
  store %struct.sdio_func* %19, %struct.sdio_func** %7, align 8
  %20 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %21 = call i64 @IS_ERR(%struct.sdio_func* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.sdio_func* %24)
  store i32 %25, i32* %3, align 4
  br label %87

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %29 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MMC_QUIRK_NONSTD_SDIO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %26
  %37 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %38 = call i32 @sdio_read_fbr(%struct.sdio_func* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %83

42:                                               ; preds = %36
  %43 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %44 = call i32 @sdio_read_func_cis(%struct.sdio_func* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %83

48:                                               ; preds = %42
  br label %74

49:                                               ; preds = %26
  %50 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %51 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %57 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %59 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %65 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %67 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %73 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %49, %48
  %75 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %76 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %77 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %76, i32 0, i32 1
  %78 = load %struct.sdio_func**, %struct.sdio_func*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sub i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %78, i64 %81
  store %struct.sdio_func* %75, %struct.sdio_func** %82, align 8
  store i32 0, i32* %3, align 4
  br label %87

83:                                               ; preds = %47, %41
  %84 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %85 = call i32 @sdio_remove_func(%struct.sdio_func* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %74, %23, %14
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card*) #1

declare dso_local i64 @IS_ERR(%struct.sdio_func*) #1

declare dso_local i32 @PTR_ERR(%struct.sdio_func*) #1

declare dso_local i32 @sdio_read_fbr(%struct.sdio_func*) #1

declare dso_local i32 @sdio_read_func_cis(%struct.sdio_func*) #1

declare dso_local i32 @sdio_remove_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
