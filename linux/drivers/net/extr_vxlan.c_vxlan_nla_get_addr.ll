; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_nla_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_nla_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vxlan_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.vxlan_addr*, %struct.nlattr*)* @vxlan_nla_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_nla_get_addr(%union.vxlan_addr* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.vxlan_addr*, align 8
  %5 = alloca %struct.nlattr*, align 8
  store %union.vxlan_addr* %0, %union.vxlan_addr** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %7 = call i32 @nla_len(%struct.nlattr* %6)
  %8 = sext i32 %7 to i64
  %9 = icmp uge i64 %8, 4
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EAFNOSUPPORT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %15 = call i32 @nla_len(%struct.nlattr* %14)
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = call i32 @nla_get_in_addr(%struct.nlattr* %19)
  %21 = load %union.vxlan_addr*, %union.vxlan_addr** %4, align 8
  %22 = bitcast %union.vxlan_addr* %21 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @AF_INET, align 4
  %26 = load %union.vxlan_addr*, %union.vxlan_addr** %4, align 8
  %27 = bitcast %union.vxlan_addr* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %13
  %30 = load i32, i32* @EAFNOSUPPORT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %18, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_in_addr(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
