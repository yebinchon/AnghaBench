; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_ctx_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_ctx_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_CTX_CTX_DATA = common dso_local global i32 0, align 4
@BNX2_CTX_CTX_CTRL = common dso_local global i32 0, align 4
@BNX2_CTX_CTX_CTRL_WRITE_REQ = common dso_local global i32 0, align 4
@BNX2_CTX_DATA_ADR = common dso_local global i32 0, align 4
@BNX2_CTX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, i32, i32, i32)* @bnx2_ctx_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_ctx_wr(%struct.bnx2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %19 = call i64 @BNX2_CHIP(%struct.bnx2* %18)
  %20 = load i64, i64* @BNX2_CHIP_5709, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %4
  %23 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %24 = load i32, i32* @BNX2_CTX_CTX_DATA, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BNX2_WR(%struct.bnx2* %23, i32 %24, i32 %25)
  %27 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %28 = load i32, i32* @BNX2_CTX_CTX_CTRL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BNX2_CTX_CTX_CTRL_WRITE_REQ, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @BNX2_WR(%struct.bnx2* %27, i32 %28, i32 %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %47, %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %38 = load i32, i32* @BNX2_CTX_CTX_CTRL, align 4
  %39 = call i32 @BNX2_RD(%struct.bnx2* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BNX2_CTX_CTX_CTRL_WRITE_REQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %50

45:                                               ; preds = %36
  %46 = call i32 @udelay(i32 5)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %33

50:                                               ; preds = %44, %33
  br label %60

51:                                               ; preds = %4
  %52 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %53 = load i32, i32* @BNX2_CTX_DATA_ADR, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BNX2_WR(%struct.bnx2* %52, i32 %53, i32 %54)
  %56 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %57 = load i32, i32* @BNX2_CTX_DATA, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @BNX2_WR(%struct.bnx2* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %50
  %61 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %62 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %61, i32 0, i32 0
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
