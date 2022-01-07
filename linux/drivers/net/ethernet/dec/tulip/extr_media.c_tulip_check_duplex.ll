; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_media.c_tulip_check_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_media.c_tulip_check_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tulip_private = type { i32*, i32, i32*, i64, i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@tulip_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MII status %04x, Link partner report %04x\0A\00", align 1
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"No link beat on the MII interface, status %04x\0A\00", align 1
@LPA_100 = common dso_local global i32 0, align 4
@TxThreshold = common dso_local global i32 0, align 4
@FullDuplex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Setting %s-duplex based on MII#%d link partner capability of %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tulip_check_duplex(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tulip_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %10)
  store %struct.tulip_private* %11, %struct.tulip_private** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %14 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MII_BMSR, align 4
  %19 = call i8* @tulip_mdio_read(%struct.net_device* %12, i32 %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %23 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MII_LPA, align 4
  %28 = call i8* @tulip_mdio_read(%struct.net_device* %21, i32 %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @tulip_debug, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 65535
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -2, i32* %2, align 4
  br label %148

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BMSR_LSTATUS, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %50 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MII_BMSR, align 4
  %55 = call i8* @tulip_mdio_read(%struct.net_device* %48, i32 %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @BMSR_LSTATUS, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load i32, i32* @tulip_debug, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %61
  store i32 -1, i32* %2, align 4
  br label %148

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %74 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %72, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %80 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @mii_duplex(i32 %81, i32 %82)
  %84 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %85 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %87 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @LPA_100, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %71
  %94 = load i32, i32* @TxThreshold, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %102

98:                                               ; preds = %71
  %99 = load i32, i32* @TxThreshold, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %104 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @FullDuplex, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %116

111:                                              ; preds = %102
  %112 = load i32, i32* @FullDuplex, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %119 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %125 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %127 = call i32 @tulip_restart_rxtx(%struct.tulip_private* %126)
  %128 = load i32, i32* @tulip_debug, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %122
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 0
  %133 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %134 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %139 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %140 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (i32*, i8*, ...) @dev_info(i32* %132, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* %138, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %130, %122
  store i32 1, i32* %2, align 4
  br label %148

147:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %146, %69, %41
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @tulip_mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @mii_duplex(i32, i32) #1

declare dso_local i32 @tulip_restart_rxtx(%struct.tulip_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
