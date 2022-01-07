; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c24xx_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c24xx_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c2410_nand_info = type { i32, i32, %struct.s3c2410_nand_mtd* }
%struct.s3c2410_nand_mtd = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"releasing mtd %d (%p)\0A\00", align 1
@CLOCK_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c2410_nand_info*, align 8
  %5 = alloca %struct.s3c2410_nand_mtd*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.s3c2410_nand_info* @to_nand_info(%struct.platform_device* %7)
  store %struct.s3c2410_nand_info* %8, %struct.s3c2410_nand_info** %4, align 8
  %9 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %10 = icmp eq %struct.s3c2410_nand_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %14 = call i32 @s3c2410_nand_cpufreq_deregister(%struct.s3c2410_nand_info* %13)
  %15 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %16 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %15, i32 0, i32 2
  %17 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %16, align 8
  %18 = icmp ne %struct.s3c2410_nand_mtd* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
  %20 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %21 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %20, i32 0, i32 2
  %22 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %21, align 8
  store %struct.s3c2410_nand_mtd* %22, %struct.s3c2410_nand_mtd** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %36, %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %26 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %5, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30, %struct.s3c2410_nand_mtd* %31)
  %33 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %5, align 8
  %34 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %33, i32 0, i32 0
  %35 = call i32 @nand_release(i32* %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %5, align 8
  %40 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %39, i32 1
  store %struct.s3c2410_nand_mtd* %40, %struct.s3c2410_nand_mtd** %5, align 8
  br label %23

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %44 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IS_ERR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %50 = load i32, i32* @CLOCK_DISABLE, align 4
  %51 = call i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.s3c2410_nand_info* @to_nand_info(%struct.platform_device*) #1

declare dso_local i32 @s3c2410_nand_cpufreq_deregister(%struct.s3c2410_nand_info*) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
