; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_null_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_null_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32* }

@D_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"tx: can't build header for encap %02Xh; load a protocol driver.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i64)* @null_build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_build_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca %struct.arcnet_local*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i16 %2, i16* %7, align 2
  store i64 %3, i64* %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %10)
  store %struct.arcnet_local* %11, %struct.arcnet_local** %9, align 8
  %12 = load i32, i32* @D_PROTO, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %15 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @arc_printk(i32 %12, %struct.net_device* %13, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %19)
  ret i32 0
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
