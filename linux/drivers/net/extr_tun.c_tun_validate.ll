; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"tun/tap creation via rtnetlink is not supported.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @tun_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %7 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %8 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  ret i32 %10
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
