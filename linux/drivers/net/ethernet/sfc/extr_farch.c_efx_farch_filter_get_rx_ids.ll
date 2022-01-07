; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_get_rx_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_get_rx_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_farch_filter_state* }
%struct.efx_farch_filter_state = type { i32, %struct.efx_farch_filter_table* }
%struct.efx_farch_filter_table = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EFX_FARCH_FILTER_TABLE_RX_IP = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_RX_DEF = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_farch_filter_get_rx_ids(%struct.efx_nic* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.efx_farch_filter_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_farch_filter_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  %16 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %15, align 8
  store %struct.efx_farch_filter_state* %16, %struct.efx_farch_filter_state** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %9, align 8
  %18 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %17, i32 0, i32 0
  %19 = call i32 @down_read(i32* %18)
  %20 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_IP, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %82, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_DEF, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %9, align 8
  %27 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %26, i32 0, i32 1
  %28 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %28, i64 %30
  store %struct.efx_farch_filter_table* %31, %struct.efx_farch_filter_table** %11, align 8
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %78, %25
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %11, align 8
  %35 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %11, align 8
  %41 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %38
  %46 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %11, align 8
  %47 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EMSGSIZE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %86

63:                                               ; preds = %56
  %64 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %11, align 8
  %65 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @efx_farch_filter_make_id(%struct.TYPE_2__* %69, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %63, %45, %38
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %32

81:                                               ; preds = %32
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %21

85:                                               ; preds = %21
  br label %86

86:                                               ; preds = %85, %60
  %87 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %9, align 8
  %88 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %87, i32 0, i32 0
  %89 = call i32 @up_read(i32* %88)
  %90 = load i32, i32* %13, align 4
  ret i32 %90
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @efx_farch_filter_make_id(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
