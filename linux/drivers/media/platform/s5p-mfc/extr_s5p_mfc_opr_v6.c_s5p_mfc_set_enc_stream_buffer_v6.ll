; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_stream_buffer_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_stream_buffer_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"stream buf addr: 0x%08lx, size: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*, i64, i32)* @s5p_mfc_set_enc_stream_buffer_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_stream_buffer_v6(%struct.s5p_mfc_ctx* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5p_mfc_dev*, align 8
  %8 = alloca %struct.s5p_mfc_regs*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 0
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %7, align 8
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %12, i32 0, i32 0
  %14 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %13, align 8
  store %struct.s5p_mfc_regs* %14, %struct.s5p_mfc_regs** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %8, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @writel(i32 %16, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %8, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 %21, i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
