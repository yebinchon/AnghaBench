; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_chk_missed_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_chk_missed_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, %struct.TYPE_2__*, %struct.bnx2_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_napi = type { i64 }

@BNX2_PCICFG_MSI_CONTROL = common dso_local global i32 0, align 4
@BNX2_PCICFG_MSI_CONTROL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_chk_missed_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_chk_missed_msi(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca %struct.bnx2_napi*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %5 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %5, i32 0, i32 2
  %7 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %8 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %7, i64 0
  store %struct.bnx2_napi* %8, %struct.bnx2_napi** %3, align 8
  %9 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %10 = call i64 @bnx2_has_work(%struct.bnx2_napi* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %14 = load i32, i32* @BNX2_PCICFG_MSI_CONTROL, align 4
  %15 = call i32 @BNX2_RD(%struct.bnx2* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BNX2_PCICFG_MSI_CONTROL_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %56

21:                                               ; preds = %12
  %22 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %31 = load i32, i32* @BNX2_PCICFG_MSI_CONTROL, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BNX2_PCICFG_MSI_CONTROL_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @BNX2_WR(%struct.bnx2* %30, i32 %31, i32 %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %38 = load i32, i32* @BNX2_PCICFG_MSI_CONTROL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @BNX2_WR(%struct.bnx2* %37, i32 %38, i32 %39)
  %41 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %48 = call i32 @bnx2_msi(i32 %46, %struct.bnx2_napi* %47)
  br label %49

49:                                               ; preds = %29, %21
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %20
  ret void
}

declare dso_local i64 @bnx2_has_work(%struct.bnx2_napi*) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_msi(i32, %struct.bnx2_napi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
