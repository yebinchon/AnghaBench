; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_do_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_do_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.ei_device = type { i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@E8390_RXCONFIG = common dso_local global i32 0, align 4
@EN0_RXCR = common dso_local global i64 0, align 8
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE1 = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Multicast filter read/write mismap %d\0A\00", align 1
@E8390_PAGE0 = common dso_local global i32 0, align 4
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
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i64 @netif_running(%struct.net_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @E8390_RXCONFIG, align 4
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @EN0_RXCR, align 8
  %47 = add i64 %45, %46
  %48 = call i32 @ei_outb_p(i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* @E8390_NODMA, align 4
  %51 = load i32, i32* @E8390_PAGE1, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @E8390_CMD, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @ei_outb_p(i32 %52, i64 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %92, %49
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %95

60:                                               ; preds = %57
  %61 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %62 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @EN1_MULT_SHIFT(i32 %69)
  %71 = add i64 %68, %70
  %72 = call i32 @ei_outb_p(i32 %67, i64 %71)
  %73 = load i64, i64* %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @EN1_MULT_SHIFT(i32 %74)
  %76 = add i64 %73, %75
  %77 = call i64 @ei_inb_p(i64 %76)
  %78 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %79 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %77, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %60
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @netdev_err(%struct.net_device* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %60
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %57

95:                                               ; preds = %57
  %96 = load i32, i32* @E8390_NODMA, align 4
  %97 = load i32, i32* @E8390_PAGE0, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* @E8390_CMD, align 8
  %101 = add i64 %99, %100
  %102 = call i32 @ei_outb_p(i32 %98, i64 %101)
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IFF_PROMISC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %95
  %110 = load i32, i32* @E8390_RXCONFIG, align 4
  %111 = or i32 %110, 24
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* @EN0_RXCR, align 8
  %114 = add i64 %112, %113
  %115 = call i32 @ei_outb_p(i32 %111, i64 %114)
  br label %141

116:                                              ; preds = %95
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IFF_ALLMULTI, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = call i32 @netdev_mc_empty(%struct.net_device* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123, %116
  %128 = load i32, i32* @E8390_RXCONFIG, align 4
  %129 = or i32 %128, 8
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* @EN0_RXCR, align 8
  %132 = add i64 %130, %131
  %133 = call i32 @ei_outb_p(i32 %129, i64 %132)
  br label %140

134:                                              ; preds = %123
  %135 = load i32, i32* @E8390_RXCONFIG, align 4
  %136 = load i64, i64* %3, align 8
  %137 = load i64, i64* @EN0_RXCR, align 8
  %138 = add i64 %136, %137
  %139 = call i32 @ei_outb_p(i32 %135, i64 %138)
  br label %140

140:                                              ; preds = %134, %127
  br label %141

141:                                              ; preds = %140, %109
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @make_mc_bits(i32*, %struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ei_outb_p(i32, i64) #1

declare dso_local i64 @EN1_MULT_SHIFT(i32) #1

declare dso_local i64 @ei_inb_p(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
