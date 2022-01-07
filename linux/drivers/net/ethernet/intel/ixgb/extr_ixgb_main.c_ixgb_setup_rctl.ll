; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_setup_rctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_setup_rctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RCTL = common dso_local global i32 0, align 4
@IXGB_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@IXGB_RCTL_BAM = common dso_local global i32 0, align 4
@IXGB_RCTL_RDMTS_1_2 = common dso_local global i32 0, align 4
@IXGB_RCTL_RXEN = common dso_local global i32 0, align 4
@IXGB_RCTL_CFF = common dso_local global i32 0, align 4
@IXGB_RCTL_SECRC = common dso_local global i32 0, align 4
@IXGB_RXBUFFER_2048 = common dso_local global i64 0, align 8
@IXGB_RCTL_BSIZE_2048 = common dso_local global i32 0, align 4
@IXGB_RXBUFFER_4096 = common dso_local global i64 0, align 8
@IXGB_RCTL_BSIZE_4096 = common dso_local global i32 0, align 4
@IXGB_RXBUFFER_8192 = common dso_local global i64 0, align 8
@IXGB_RCTL_BSIZE_8192 = common dso_local global i32 0, align 4
@IXGB_RXBUFFER_16384 = common dso_local global i64 0, align 8
@IXGB_RCTL_BSIZE_16384 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*)* @ixgb_setup_rctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_setup_rctl(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %4 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %4, i32 0, i32 1
  %6 = load i32, i32* @RCTL, align 4
  %7 = call i32 @IXGB_READ_REG(%struct.TYPE_3__* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @IXGB_RCTL_MO_SHIFT, align 4
  %9 = shl i32 3, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @IXGB_RCTL_BAM, align 4
  %14 = load i32, i32* @IXGB_RCTL_RDMTS_1_2, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IXGB_RCTL_RXEN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IXGB_RCTL_CFF, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IXGB_RCTL_MO_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %19, %25
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @IXGB_RCTL_SECRC, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IXGB_RXBUFFER_2048, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @IXGB_RCTL_BSIZE_2048, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %74

41:                                               ; preds = %1
  %42 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IXGB_RXBUFFER_4096, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @IXGB_RCTL_BSIZE_4096, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %41
  %52 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IXGB_RXBUFFER_8192, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @IXGB_RCTL_BSIZE_8192, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %72

61:                                               ; preds = %51
  %62 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IXGB_RXBUFFER_16384, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @IXGB_RCTL_BSIZE_16384, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %47
  br label %74

74:                                               ; preds = %73, %37
  %75 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %75, i32 0, i32 1
  %77 = load i32, i32* @RCTL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @IXGB_WRITE_REG(%struct.TYPE_3__* %76, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @IXGB_READ_REG(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
