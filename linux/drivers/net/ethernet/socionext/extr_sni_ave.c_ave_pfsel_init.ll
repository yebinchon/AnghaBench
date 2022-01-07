; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pfsel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pfsel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@AVE_PF_SIZE = common dso_local global i32 0, align 4
@AVE_PFNUM_FILTER = common dso_local global i32 0, align 4
@AVE_PFNUM_UNICAST = common dso_local global i32 0, align 4
@AVE_PFNUM_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ave_pfsel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ave_pfsel_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load i32, i32* @ETH_ALEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 @eth_broadcast_addr(i8* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AVE_PF_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ave_pfsel_stop(%struct.net_device* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @AVE_PFNUM_FILTER, align 4
  %25 = call i32 @ave_pfsel_set_promisc(%struct.net_device* %23, i32 %24, i32 0)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i32, i32* @AVE_PFNUM_UNICAST, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @ave_pfsel_set_macaddr(%struct.net_device* %26, i32 %27, i8* %30, i32 6)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* @AVE_PFNUM_BROADCAST, align 4
  %34 = call i32 @ave_pfsel_set_macaddr(%struct.net_device* %32, i32 %33, i8* %9, i32 6)
  %35 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %35)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eth_broadcast_addr(i8*) #2

declare dso_local i32 @ave_pfsel_stop(%struct.net_device*, i32) #2

declare dso_local i32 @ave_pfsel_set_promisc(%struct.net_device*, i32, i32) #2

declare dso_local i32 @ave_pfsel_set_macaddr(%struct.net_device*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
