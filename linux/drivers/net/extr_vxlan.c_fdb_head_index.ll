; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_fdb_head_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_fdb_head_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VXLAN_F_COLLECT_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, i32*, i32)* @fdb_head_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdb_head_index(%struct.vxlan_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %9 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VXLAN_F_COLLECT_METADATA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @eth_vni_hash(i32* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @eth_hash(i32* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @eth_vni_hash(i32*, i32) #1

declare dso_local i32 @eth_hash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
