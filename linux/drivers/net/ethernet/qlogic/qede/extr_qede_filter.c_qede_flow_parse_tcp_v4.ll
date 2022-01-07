; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_parse_tcp_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_parse_tcp_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.flow_rule = type { i32 }
%struct.qede_arfs_tuple = type { i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*)* @qede_flow_parse_tcp_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_flow_parse_tcp_v4(%struct.qede_dev* %0, %struct.flow_rule* %1, %struct.qede_arfs_tuple* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.flow_rule*, align 8
  %6 = alloca %struct.qede_arfs_tuple*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.flow_rule* %1, %struct.flow_rule** %5, align 8
  store %struct.qede_arfs_tuple* %2, %struct.qede_arfs_tuple** %6, align 8
  %7 = load i32, i32* @IPPROTO_TCP, align 4
  %8 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %9 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ETH_P_IP, align 4
  %11 = call i32 @htons(i32 %10)
  %12 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %13 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %15 = load %struct.flow_rule*, %struct.flow_rule** %5, align 8
  %16 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %17 = call i32 @qede_flow_parse_v4_common(%struct.qede_dev* %14, %struct.flow_rule* %15, %struct.qede_arfs_tuple* %16)
  ret i32 %17
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @qede_flow_parse_v4_common(%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
