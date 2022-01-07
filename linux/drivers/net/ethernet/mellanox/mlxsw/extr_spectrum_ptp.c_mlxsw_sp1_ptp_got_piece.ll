; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_got_piece.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_got_piece.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mlxsw_sp1_ptp_key = type { i32, i32 }
%struct.mlxsw_sp1_ptp_unmatched = type { i64, %struct.sk_buff* }

@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i64, %struct.sk_buff*, i64)* @mlxsw_sp1_ptp_got_piece to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_ptp_got_piece(%struct.mlxsw_sp* %0, i64 %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca %struct.mlxsw_sp1_ptp_key, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlxsw_sp1_ptp_unmatched*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.mlxsw_sp1_ptp_key* %5 to i64*
  store i64 %1, i64* %12, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %20 = bitcast %struct.mlxsw_sp1_ptp_key* %5 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call %struct.mlxsw_sp1_ptp_unmatched* @mlxsw_sp1_ptp_unmatched_lookup(%struct.mlxsw_sp* %19, i64 %21, i32* %10)
  store %struct.mlxsw_sp1_ptp_unmatched* %22, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %27 = icmp ne %struct.mlxsw_sp1_ptp_unmatched* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %35, i32 0, i32 1
  store %struct.sk_buff* %34, %struct.sk_buff** %36, align 8
  br label %81

37:                                               ; preds = %28, %25, %4
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %42 = icmp ne %struct.mlxsw_sp1_ptp_unmatched* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %44, i32 0, i32 1
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %80

52:                                               ; preds = %43, %40, %37
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 100
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = bitcast %struct.mlxsw_sp1_ptp_key* %5 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = call i32 @mlxsw_sp1_ptp_unmatched_save(%struct.mlxsw_sp* %56, i64 %60, %struct.sk_buff* %57, i64 %58)
  store i32 %61, i32* %11, align 4
  br label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @E2BIG, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp1_ptp_key, %struct.mlxsw_sp1_ptp_key* %5, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.mlxsw_sp1_ptp_key, %struct.mlxsw_sp1_ptp_key* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mlxsw_sp1_ptp_packet_finish(%struct.mlxsw_sp* %72, %struct.sk_buff* %73, i32 %75, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %71, %68, %65
  store %struct.mlxsw_sp1_ptp_unmatched* null, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %33
  %82 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %83 = icmp ne %struct.mlxsw_sp1_ptp_unmatched* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %86 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %87 = call i32 @mlxsw_sp1_ptp_unmatched_remove(%struct.mlxsw_sp* %85, %struct.mlxsw_sp1_ptp_unmatched* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @WARN_ON_ONCE(i32 %88)
  br label %90

90:                                               ; preds = %84, %81
  %91 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %97 = icmp ne %struct.mlxsw_sp1_ptp_unmatched* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %100 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %9, align 8
  %101 = call i32 @mlxsw_sp1_ptp_unmatched_finish(%struct.mlxsw_sp* %99, %struct.mlxsw_sp1_ptp_unmatched* %100)
  br label %102

102:                                              ; preds = %98, %90
  %103 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlxsw_sp1_ptp_unmatched* @mlxsw_sp1_ptp_unmatched_lookup(%struct.mlxsw_sp*, i64, i32*) #1

declare dso_local i32 @mlxsw_sp1_ptp_unmatched_save(%struct.mlxsw_sp*, i64, %struct.sk_buff*, i64) #1

declare dso_local i32 @mlxsw_sp1_ptp_packet_finish(%struct.mlxsw_sp*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @mlxsw_sp1_ptp_unmatched_remove(%struct.mlxsw_sp*, %struct.mlxsw_sp1_ptp_unmatched*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlxsw_sp1_ptp_unmatched_finish(%struct.mlxsw_sp*, %struct.mlxsw_sp1_ptp_unmatched*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
