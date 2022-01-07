; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5300_priv = type { i64 }

@W5300_MR = common dso_local global i32 0, align 4
@MR_RST = common dso_local global i32 0, align 4
@MR_PB = common dso_local global i32 0, align 4
@MR_IND = common dso_local global i32 0, align 4
@W5300_IMR = common dso_local global i32 0, align 4
@W5300_RMSRL = common dso_local global i32 0, align 4
@W5300_RMSRH = common dso_local global i32 0, align 4
@W5300_TMSRL = common dso_local global i32 0, align 4
@W5300_TMSRH = common dso_local global i32 0, align 4
@W5300_MTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w5300_priv*)* @w5300_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w5300_hw_reset(%struct.w5300_priv* %0) #0 {
  %2 = alloca %struct.w5300_priv*, align 8
  store %struct.w5300_priv* %0, %struct.w5300_priv** %2, align 8
  %3 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %4 = load i32, i32* @W5300_MR, align 4
  %5 = load i32, i32* @MR_RST, align 4
  %6 = call i32 @w5300_write_direct(%struct.w5300_priv* %3, i32 %4, i32 %5)
  %7 = call i32 @mdelay(i32 5)
  %8 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %9 = load i32, i32* @W5300_MR, align 4
  %10 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %11 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = call i32 @MR_WDF(i32 7)
  %16 = load i32, i32* @MR_PB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MR_IND, align 4
  %19 = or i32 %17, %18
  br label %24

20:                                               ; preds = %1
  %21 = call i32 @MR_WDF(i32 7)
  %22 = load i32, i32* @MR_PB, align 4
  %23 = or i32 %21, %22
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i32 [ %19, %14 ], [ %23, %20 ]
  %26 = call i32 @w5300_write_direct(%struct.w5300_priv* %8, i32 %9, i32 %25)
  %27 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %28 = load i32, i32* @W5300_IMR, align 4
  %29 = call i32 @w5300_write(%struct.w5300_priv* %27, i32 %28, i32 0)
  %30 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %31 = call i32 @w5300_write_macaddr(%struct.w5300_priv* %30)
  %32 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %33 = load i32, i32* @W5300_RMSRL, align 4
  %34 = call i32 @w5300_write32(%struct.w5300_priv* %32, i32 %33, i32 1073741824)
  %35 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %36 = load i32, i32* @W5300_RMSRH, align 4
  %37 = call i32 @w5300_write32(%struct.w5300_priv* %35, i32 %36, i32 0)
  %38 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %39 = load i32, i32* @W5300_TMSRL, align 4
  %40 = call i32 @w5300_write32(%struct.w5300_priv* %38, i32 %39, i32 1073741824)
  %41 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %42 = load i32, i32* @W5300_TMSRH, align 4
  %43 = call i32 @w5300_write32(%struct.w5300_priv* %41, i32 %42, i32 0)
  %44 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %45 = load i32, i32* @W5300_MTYPE, align 4
  %46 = call i32 @w5300_write(%struct.w5300_priv* %44, i32 %45, i32 255)
  ret void
}

declare dso_local i32 @w5300_write_direct(%struct.w5300_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MR_WDF(i32) #1

declare dso_local i32 @w5300_write(%struct.w5300_priv*, i32, i32) #1

declare dso_local i32 @w5300_write_macaddr(%struct.w5300_priv*) #1

declare dso_local i32 @w5300_write32(%struct.w5300_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
