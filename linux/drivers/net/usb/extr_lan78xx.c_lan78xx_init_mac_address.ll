; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_init_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_init_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RX_ADDRL = common dso_local global i32 0, align 4
@RX_ADDRH = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"MAC address read from Device Tree\00", align 1
@EEPROM_MAC_OFFSET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MAC address read from EEPROM\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"MAC address set to random addr\00", align 1
@MAF_HI_VALID_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*)* @lan78xx_init_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_init_mac_address(%struct.lan78xx_net* %0) #0 {
  %2 = alloca %struct.lan78xx_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %2, align 8
  %7 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %8 = load i32, i32* @RX_ADDRL, align 4
  %9 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %7, i32 %8, i32* %3)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %11 = load i32, i32* @RX_ADDRH, align 4
  %12 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %10, i32 %11, i32* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 24
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %36 = call i64 @is_valid_ether_addr(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %117, label %38

38:                                               ; preds = %1
  %39 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %40 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %44 = call i32 @eth_platform_get_mac_address(i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %48 = load i32, i32* @ifup, align 4
  %49 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %50 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @netif_dbg(%struct.lan78xx_net* %47, i32 %48, %struct.TYPE_4__* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %88

53:                                               ; preds = %38
  %54 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %55 = load i32, i32* @EEPROM_MAC_OFFSET, align 4
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %58 = call i64 @lan78xx_read_eeprom(%struct.lan78xx_net* %54, i32 %55, i32 %56, i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %62 = load i32, i32* @EEPROM_MAC_OFFSET, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %65 = call i64 @lan78xx_read_otp(%struct.lan78xx_net* %61, i32 %62, i32 %63, i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60, %53
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %69 = call i64 @is_valid_ether_addr(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %73 = load i32, i32* @ifup, align 4
  %74 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %75 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i32 @netif_dbg(%struct.lan78xx_net* %72, i32 %73, %struct.TYPE_4__* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %87

78:                                               ; preds = %67, %60
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %80 = call i32 @eth_random_addr(i32* %79)
  %81 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %82 = load i32, i32* @ifup, align 4
  %83 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %84 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @netif_dbg(%struct.lan78xx_net* %81, i32 %82, %struct.TYPE_4__* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %78, %71
  br label %88

88:                                               ; preds = %87, %46
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %90, %93
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 16
  %98 = or i32 %94, %97
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 24
  %102 = or i32 %98, %101
  store i32 %102, i32* %3, align 4
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  %104 = load i32, i32* %103, align 16
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 8
  %108 = or i32 %104, %107
  store i32 %108, i32* %4, align 4
  %109 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %110 = load i32, i32* @RX_ADDRL, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %109, i32 %110, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %114 = load i32, i32* @RX_ADDRH, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %113, i32 %114, i32 %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %88, %1
  %118 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %119 = call i32 @MAF_LO(i32 0)
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %118, i32 %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %123 = call i32 @MAF_HI(i32 0)
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @MAF_HI_VALID_, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %122, i32 %123, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %129 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %134 = call i32 @ether_addr_copy(i32 %132, i32* %133)
  ret void
}

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @eth_platform_get_mac_address(i32*, i32*) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i64 @lan78xx_read_eeprom(%struct.lan78xx_net*, i32, i32, i32*) #1

declare dso_local i64 @lan78xx_read_otp(%struct.lan78xx_net*, i32, i32, i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @MAF_LO(i32) #1

declare dso_local i32 @MAF_HI(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
