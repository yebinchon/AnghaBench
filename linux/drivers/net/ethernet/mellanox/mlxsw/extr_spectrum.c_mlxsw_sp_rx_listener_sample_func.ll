; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_rx_listener_sample_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_rx_listener_sample_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_4__*, %struct.mlxsw_sp_port** }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.psample_group = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Port %d: sample skb received for non-existent port\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Port %d: sample skb received on unsupported port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i64, i8*)* @mlxsw_sp_rx_listener_sample_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_rx_listener_sample_func(%struct.sk_buff* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.psample_group*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.mlxsw_sp*
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 1
  %15 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %15, i64 %16
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %17, align 8
  store %struct.mlxsw_sp_port* %18, %struct.mlxsw_sp_port** %8, align 8
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %20 = icmp ne %struct.mlxsw_sp_port* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @dev_warn_ratelimited(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %96

33:                                               ; preds = %3
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @dev_warn_ratelimited(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %96

50:                                               ; preds = %33
  %51 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  br label %67

63:                                               ; preds = %50
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %62, %57 ], [ %66, %63 ]
  store i32 %68, i32* %10, align 4
  %69 = call i32 (...) @rcu_read_lock()
  %70 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.psample_group* @rcu_dereference(i32 %74)
  store %struct.psample_group* %75, %struct.psample_group** %9, align 8
  %76 = load %struct.psample_group*, %struct.psample_group** %9, align 8
  %77 = icmp ne %struct.psample_group* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %67
  br label %94

79:                                               ; preds = %67
  %80 = load %struct.psample_group*, %struct.psample_group** %9, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %89 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @psample_sample_packet(%struct.psample_group* %80, %struct.sk_buff* %81, i32 %82, i32 %87, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %79, %78
  %95 = call i32 (...) @rcu_read_unlock()
  br label %96

96:                                               ; preds = %94, %42, %25
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @consume_skb(%struct.sk_buff* %97)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.psample_group* @rcu_dereference(i32) #1

declare dso_local i32 @psample_sample_packet(%struct.psample_group*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
