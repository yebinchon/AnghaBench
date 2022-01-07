; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32, i32, %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32 }

@cmd_host2risc = common dso_local global i32 0, align 4
@S5P_FIMV_H2R_CMD_FLUSH_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_ctx*, i32)* @s5p_mfc_set_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_set_flush(%struct.s5p_mfc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca %struct.s5p_mfc_regs*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 2
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %5, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 2
  %12 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %11, align 8
  store %struct.s5p_mfc_regs* %12, %struct.s5p_mfc_regs** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %6, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writel(i32 %23, i32 %26)
  %28 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @cmd_host2risc, align 4
  %32 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %33 = load i32, i32* @S5P_FIMV_H2R_CMD_FLUSH_V6, align 4
  %34 = call i32 @s5p_mfc_hw_call(i32 %30, i32 %31, %struct.s5p_mfc_dev* %32, i32 %33, i32* null)
  br label %35

35:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
