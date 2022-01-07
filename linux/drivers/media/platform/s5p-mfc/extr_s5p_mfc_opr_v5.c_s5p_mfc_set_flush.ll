; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_SI_CH0_DPB_CONF_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_DPB_FLUSH_MASK = common dso_local global i32 0, align 4
@S5P_FIMV_DPB_FLUSH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_ctx*, i32)* @s5p_mfc_set_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_set_flush(%struct.s5p_mfc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 0
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %14 = load i32, i32* @S5P_FIMV_SI_CH0_DPB_CONF_CTRL, align 4
  %15 = call i32 @mfc_read(%struct.s5p_mfc_dev* %13, i32 %14)
  %16 = load i32, i32* @S5P_FIMV_DPB_FLUSH_MASK, align 4
  %17 = load i32, i32* @S5P_FIMV_DPB_FLUSH_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  store i32 %19, i32* %6, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %22 = load i32, i32* @S5P_FIMV_SI_CH0_DPB_CONF_CTRL, align 4
  %23 = call i32 @mfc_read(%struct.s5p_mfc_dev* %21, i32 %22)
  %24 = load i32, i32* @S5P_FIMV_DPB_FLUSH_MASK, align 4
  %25 = load i32, i32* @S5P_FIMV_DPB_FLUSH_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %20, %12
  %30 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @S5P_FIMV_SI_CH0_DPB_CONF_CTRL, align 4
  %33 = call i32 @mfc_write(%struct.s5p_mfc_dev* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
