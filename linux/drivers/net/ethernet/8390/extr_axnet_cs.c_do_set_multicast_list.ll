; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_do_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_do_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.ei_device = type { i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE1 = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_RXCONFIG = common dso_local global i32 0, align 4
@EN0_RXCR = common dso_local global i64 0, align 8
@E8390_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @do_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ei_device* @netdev_priv(%struct.net_device* %9)
  store %struct.ei_device* %10, %struct.ei_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_PROMISC, align 4
  %15 = load i32, i32* @IFF_ALLMULTI, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %1
  %20 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %21 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @memset(i32* %22, i32 0, i32 8)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netdev_mc_empty(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %29 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @make_mc_bits(i32* %30, %struct.net_device* %31)
  br label %33

33:                                               ; preds = %27, %19
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %36 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @memset(i32* %37, i32 255, i32 8)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* @E8390_NODMA, align 4
  %41 = load i32, i32* @E8390_PAGE1, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @E8390_CMD, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb_p(i32 %42, i64 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %63, %39
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %52 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @EN1_MULT_SHIFT(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @outb_p(i32 %57, i64 %61)
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load i32, i32* @E8390_NODMA, align 4
  %68 = load i32, i32* @E8390_PAGE0, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @E8390_CMD, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb_p(i32 %69, i64 %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IFF_PROMISC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %66
  %81 = load i32, i32* @E8390_RXCONFIG, align 4
  %82 = or i32 %81, 88
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* @EN0_RXCR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outb_p(i32 %82, i64 %85)
  br label %113

87:                                               ; preds = %66
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IFF_ALLMULTI, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 @netdev_mc_empty(%struct.net_device* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94, %87
  %99 = load i32, i32* @E8390_RXCONFIG, align 4
  %100 = or i32 %99, 72
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* @EN0_RXCR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb_p(i32 %100, i64 %103)
  br label %112

105:                                              ; preds = %94
  %106 = load i32, i32* @E8390_RXCONFIG, align 4
  %107 = or i32 %106, 64
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* @EN0_RXCR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outb_p(i32 %107, i64 %110)
  br label %112

112:                                              ; preds = %105, %98
  br label %113

113:                                              ; preds = %112, %80
  %114 = load i32, i32* @E8390_NODMA, align 4
  %115 = load i32, i32* @E8390_PAGE0, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @E8390_START, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i64, i64* %3, align 8
  %120 = load i64, i64* @E8390_CMD, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outb_p(i32 %118, i64 %121)
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @make_mc_bits(i32*, %struct.net_device*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i64 @EN1_MULT_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
