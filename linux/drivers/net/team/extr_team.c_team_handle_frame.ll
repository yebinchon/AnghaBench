; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_handle_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.team_port = type { %struct.team* }
%struct.team = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.team*, %struct.team_port*, %struct.sk_buff.0*)* }
%struct.sk_buff.0 = type opaque
%struct.team_pcpu_stats = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_HANDLER_CONSUMED = common dso_local global i64 0, align 8
@RX_HANDLER_EXACT = common dso_local global i64 0, align 8
@RX_HANDLER_ANOTHER = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff**)* @team_handle_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @team_handle_frame(%struct.sk_buff** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.team_port*, align 8
  %6 = alloca %struct.team*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.team_pcpu_stats*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %9 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @RX_HANDLER_CONSUMED, align 8
  store i64 %17, i64* %2, align 8
  br label %108

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %20, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.team_port* @team_port_get_rcu(i32 %23)
  store %struct.team_port* %24, %struct.team_port** %5, align 8
  %25 = load %struct.team_port*, %struct.team_port** %5, align 8
  %26 = getelementptr inbounds %struct.team_port, %struct.team_port* %25, i32 0, i32 0
  %27 = load %struct.team*, %struct.team** %26, align 8
  store %struct.team* %27, %struct.team** %6, align 8
  %28 = load %struct.team_port*, %struct.team_port** %5, align 8
  %29 = call i32 @team_port_enabled(%struct.team_port* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %18
  %32 = load i64, i64* @RX_HANDLER_EXACT, align 8
  store i64 %32, i64* %7, align 8
  br label %43

33:                                               ; preds = %18
  %34 = load %struct.team*, %struct.team** %6, align 8
  %35 = getelementptr inbounds %struct.team, %struct.team* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64 (%struct.team*, %struct.team_port*, %struct.sk_buff.0*)*, i64 (%struct.team*, %struct.team_port*, %struct.sk_buff.0*)** %36, align 8
  %38 = load %struct.team*, %struct.team** %6, align 8
  %39 = load %struct.team_port*, %struct.team_port** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = bitcast %struct.sk_buff* %40 to %struct.sk_buff.0*
  %42 = call i64 %37(%struct.team* %38, %struct.team_port* %39, %struct.sk_buff.0* %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %33, %31
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @RX_HANDLER_ANOTHER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load %struct.team*, %struct.team** %6, align 8
  %49 = getelementptr inbounds %struct.team, %struct.team* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call %struct.team_pcpu_stats* @this_cpu_ptr(%struct.TYPE_4__* %50)
  store %struct.team_pcpu_stats* %51, %struct.team_pcpu_stats** %8, align 8
  %52 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %53 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %52, i32 0, i32 0
  %54 = call i32 @u64_stats_update_begin(i32* %53)
  %55 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %56 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %63 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PACKET_MULTICAST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %47
  %74 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %75 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %47
  %79 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %80 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %79, i32 0, i32 0
  %81 = call i32 @u64_stats_update_end(i32* %80)
  %82 = load %struct.team*, %struct.team** %6, align 8
  %83 = getelementptr inbounds %struct.team, %struct.team* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %106

87:                                               ; preds = %43
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @RX_HANDLER_EXACT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.team*, %struct.team** %6, align 8
  %93 = getelementptr inbounds %struct.team, %struct.team* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @this_cpu_inc(i32 %96)
  br label %105

98:                                               ; preds = %87
  %99 = load %struct.team*, %struct.team** %6, align 8
  %100 = getelementptr inbounds %struct.team, %struct.team* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @this_cpu_inc(i32 %103)
  br label %105

105:                                              ; preds = %98, %91
  br label %106

106:                                              ; preds = %105, %78
  %107 = load i64, i64* %7, align 8
  store i64 %107, i64* %2, align 8
  br label %108

108:                                              ; preds = %106, %16
  %109 = load i64, i64* %2, align 8
  ret i64 %109
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local %struct.team_port* @team_port_get_rcu(i32) #1

declare dso_local i32 @team_port_enabled(%struct.team_port*) #1

declare dso_local %struct.team_pcpu_stats* @this_cpu_ptr(%struct.TYPE_4__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
