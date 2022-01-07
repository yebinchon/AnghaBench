; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_vou_device = type { i32, %struct.TYPE_2__, %struct.sh_vou_pdata* }
%struct.TYPE_2__ = type { i32 }
%struct.sh_vou_pdata = type { i32, i32 }

@VOUIR = common dso_local global i32 0, align 4
@VOUSRR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Reset took %dus\0A\00", align 1
@SH_VOU_PCLK_FALLING = common dso_local global i32 0, align 4
@SH_VOU_HSYNC_LOW = common dso_local global i32 0, align 4
@SH_VOU_VSYNC_LOW = common dso_local global i32 0, align 4
@VOUCR = common dso_local global i32 0, align 4
@VOURCR = common dso_local global i32 0, align 4
@VOUMSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_vou_device*)* @sh_vou_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_vou_hw_init(%struct.sh_vou_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_vou_device*, align 8
  %4 = alloca %struct.sh_vou_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh_vou_device* %0, %struct.sh_vou_device** %3, align 8
  %7 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %8 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %7, i32 0, i32 2
  %9 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %8, align 8
  store %struct.sh_vou_pdata* %9, %struct.sh_vou_pdata** %4, align 8
  %10 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %11 = getelementptr inbounds %struct.sh_vou_pdata, %struct.sh_vou_pdata* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sh_vou_ntsc_mode(i32 %12)
  %14 = shl i32 %13, 29
  store i32 %14, i32* %5, align 4
  store i32 100, i32* %6, align 4
  %15 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %16 = load i32, i32* @VOUIR, align 4
  %17 = call i32 @sh_vou_reg_a_write(%struct.sh_vou_device* %15, i32 %16, i32 0)
  %18 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %19 = load i32, i32* @VOUSRR, align 4
  %20 = call i32 @sh_vou_reg_a_write(%struct.sh_vou_device* %18, i32 %19, i32 257)
  br label %21

21:                                               ; preds = %33, %1
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %27 = load i32, i32* @VOUSRR, align 4
  %28 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %26, i32 %27)
  %29 = and i32 %28, 257
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 @udelay(i32 1)
  br label %21

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %93

41:                                               ; preds = %35
  %42 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %43 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 100, %46
  %48 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %50 = getelementptr inbounds %struct.sh_vou_pdata, %struct.sh_vou_pdata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SH_VOU_PCLK_FALLING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 268435456
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %41
  %59 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %60 = getelementptr inbounds %struct.sh_vou_pdata, %struct.sh_vou_pdata* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SH_VOU_HSYNC_LOW, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, 134217728
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %70 = getelementptr inbounds %struct.sh_vou_pdata, %struct.sh_vou_pdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SH_VOU_VSYNC_LOW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, 67108864
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %80 = load i32, i32* @VOUCR, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sh_vou_reg_ab_set(%struct.sh_vou_device* %79, i32 %80, i32 %81, i32 -67108864)
  %83 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %84 = load i32, i32* @VOURCR, align 4
  %85 = call i32 @sh_vou_reg_a_write(%struct.sh_vou_device* %83, i32 %84, i32 4)
  %86 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %87 = load i32, i32* @VOUMSR, align 4
  %88 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %86, i32 %87, i32 8388608)
  %89 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %90 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %91 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %90, i32 0, i32 0
  %92 = call i32 @sh_vou_set_fmt_vid_out(%struct.sh_vou_device* %89, i32* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %78, %38
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @sh_vou_ntsc_mode(i32) #1

declare dso_local i32 @sh_vou_reg_a_write(%struct.sh_vou_device*, i32, i32) #1

declare dso_local i32 @sh_vou_reg_a_read(%struct.sh_vou_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sh_vou_reg_ab_set(%struct.sh_vou_device*, i32, i32, i32) #1

declare dso_local i32 @sh_vou_reg_ab_write(%struct.sh_vou_device*, i32, i32) #1

declare dso_local i32 @sh_vou_set_fmt_vid_out(%struct.sh_vou_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
