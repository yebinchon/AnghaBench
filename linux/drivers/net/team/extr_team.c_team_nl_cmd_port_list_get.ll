; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_cmd_port_list_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_cmd_port_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.team = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLM_F_ACK = common dso_local global i32 0, align 4
@team_nl_send_unicast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @team_nl_cmd_port_list_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_nl_cmd_port_list_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.team*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = call %struct.team* @team_nl_team_get(%struct.genl_info* %8)
  store %struct.team* %9, %struct.team** %6, align 8
  %10 = load %struct.team*, %struct.team** %6, align 8
  %11 = icmp ne %struct.team* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.team*, %struct.team** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NLM_F_ACK, align 4
  %24 = load i32, i32* @team_nl_send_unicast, align 4
  %25 = call i32 @team_nl_send_port_list_get(%struct.team* %16, i32 %19, i32 %22, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.team*, %struct.team** %6, align 8
  %27 = call i32 @team_nl_team_put(%struct.team* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %15, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.team* @team_nl_team_get(%struct.genl_info*) #1

declare dso_local i32 @team_nl_send_port_list_get(%struct.team*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @team_nl_team_put(%struct.team*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
