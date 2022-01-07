; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_log_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_log_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"IRQ 0x%02x (IREN 0x%02x) :%s%s%s%s%s%s%s%s%s\00", align 1
@CIR_IRSTS_RDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" RDR\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CIR_IRSTS_RTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" RTR\00", align 1
@CIR_IRSTS_PE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" PE\00", align 1
@CIR_IRSTS_RFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" RFO\00", align 1
@CIR_IRSTS_TE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" TE\00", align 1
@CIR_IRSTS_TTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" TTR\00", align 1
@CIR_IRSTS_TFU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c" TFU\00", align 1
@CIR_IRSTS_GH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c" GH\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @nvt_cir_log_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_cir_log_irqs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CIR_IRSTS_RDR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CIR_IRSTS_RTR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CIR_IRSTS_PE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CIR_IRSTS_RFO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CIR_IRSTS_TE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @CIR_IRSTS_TTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @CIR_IRSTS_TFU, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @CIR_IRSTS_GH, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @CIR_IRSTS_RDR, align 4
  %57 = load i32, i32* @CIR_IRSTS_RTR, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CIR_IRSTS_PE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CIR_IRSTS_RFO, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CIR_IRSTS_TE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CIR_IRSTS_TTR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CIR_IRSTS_TFU, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CIR_IRSTS_GH, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %55, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 @nvt_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* %12, i8* %18, i8* %24, i8* %30, i8* %36, i8* %42, i8* %48, i8* %54, i8* %75)
  ret void
}

declare dso_local i32 @nvt_dbg(i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
