; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_fill_one_port_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_fill_one_port_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.team_port = type { i32, %struct.TYPE_3__, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@TEAM_ATTR_ITEM_PORT = common dso_local global i32 0, align 4
@TEAM_ATTR_PORT_IFINDEX = common dso_local global i32 0, align 4
@TEAM_ATTR_PORT_CHANGED = common dso_local global i32 0, align 4
@TEAM_ATTR_PORT_REMOVED = common dso_local global i32 0, align 4
@TEAM_ATTR_PORT_LINKUP = common dso_local global i32 0, align 4
@TEAM_ATTR_PORT_SPEED = common dso_local global i32 0, align 4
@TEAM_ATTR_PORT_DUPLEX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.team_port*)* @team_nl_fill_one_port_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_nl_fill_one_port_get(%struct.sk_buff* %0, %struct.team_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.team_port*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.team_port* %1, %struct.team_port** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @TEAM_ATTR_ITEM_PORT, align 4
  %9 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %82

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @TEAM_ATTR_PORT_IFINDEX, align 4
  %16 = load %struct.team_port*, %struct.team_port** %5, align 8
  %17 = getelementptr inbounds %struct.team_port, %struct.team_port* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @nla_put_u32(%struct.sk_buff* %14, i32 %15, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %82

24:                                               ; preds = %13
  %25 = load %struct.team_port*, %struct.team_port** %5, align 8
  %26 = getelementptr inbounds %struct.team_port, %struct.team_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @TEAM_ATTR_PORT_CHANGED, align 4
  %32 = call i64 @nla_put_flag(%struct.sk_buff* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %82

35:                                               ; preds = %29
  %36 = load %struct.team_port*, %struct.team_port** %5, align 8
  %37 = getelementptr inbounds %struct.team_port, %struct.team_port* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.team_port*, %struct.team_port** %5, align 8
  %40 = getelementptr inbounds %struct.team_port, %struct.team_port* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @TEAM_ATTR_PORT_REMOVED, align 4
  %46 = call i64 @nla_put_flag(%struct.sk_buff* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.team_port*, %struct.team_port** %5, align 8
  %50 = getelementptr inbounds %struct.team_port, %struct.team_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i32, i32* @TEAM_ATTR_PORT_LINKUP, align 4
  %57 = call i64 @nla_put_flag(%struct.sk_buff* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @TEAM_ATTR_PORT_SPEED, align 4
  %62 = load %struct.team_port*, %struct.team_port** %5, align 8
  %63 = getelementptr inbounds %struct.team_port, %struct.team_port* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_u32(%struct.sk_buff* %60, i32 %61, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load i32, i32* @TEAM_ATTR_PORT_DUPLEX, align 4
  %71 = load %struct.team_port*, %struct.team_port** %5, align 8
  %72 = getelementptr inbounds %struct.team_port, %struct.team_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @nla_put_u8(%struct.sk_buff* %69, i32 %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68, %59, %54, %43
  br label %82

78:                                               ; preds = %68
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %81 = call i32 @nla_nest_end(%struct.sk_buff* %79, %struct.nlattr* %80)
  store i32 0, i32* %3, align 4
  br label %88

82:                                               ; preds = %77, %34, %23, %12
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %85 = call i32 @nla_nest_cancel(%struct.sk_buff* %83, %struct.nlattr* %84)
  %86 = load i32, i32* @EMSGSIZE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
