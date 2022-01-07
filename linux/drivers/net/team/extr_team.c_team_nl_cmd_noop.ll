; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_cmd_noop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_cmd_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@team_nl_family = common dso_local global i32 0, align 4
@TEAM_CMD_NOOP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @team_nl_cmd_noop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_nl_cmd_noop(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @nlmsg_new(i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TEAM_CMD_NOOP, align 4
  %26 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 %21, i32 %24, i32* @team_nl_family, i32 0, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %43

32:                                               ; preds = %17
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @genlmsg_end(%struct.sk_buff* %33, i8* %34)
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = call i32 @genl_info_net(%struct.genl_info* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @genlmsg_unicast(i32 %37, %struct.sk_buff* %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %29
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @nlmsg_free(%struct.sk_buff* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %32, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
