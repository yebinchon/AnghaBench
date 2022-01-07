; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32, i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@EEPROM_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.port_info* @netdev_priv(%struct.net_device* %15)
  store %struct.port_info* %16, %struct.port_info** %8, align 8
  %17 = load %struct.port_info*, %struct.port_info** %8, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %9, align 8
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EEPROM_MAGIC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %149

28:                                               ; preds = %3
  %29 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, -4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 3
  %40 = add nsw i32 %35, %39
  %41 = add nsw i32 %40, 3
  %42 = and i32 %41, -4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %51 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %48, %28
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kmalloc(i32 %55, i32 %56)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %149

63:                                               ; preds = %54
  %64 = load %struct.adapter*, %struct.adapter** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @t3_seeprom_read(%struct.adapter* %64, i32 %65, i32* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.adapter*, %struct.adapter** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  %78 = sub nsw i32 %77, 4
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = call i32 @t3_seeprom_read(%struct.adapter* %74, i32 %78, i32* %83)
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %73, %70, %63
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %140

89:                                               ; preds = %85
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %92 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %99 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i32* %96, i32* %97, i32 %100)
  br label %104

102:                                              ; preds = %48
  %103 = load i32*, i32** %7, align 8
  store i32* %103, i32** %13, align 8
  br label %104

104:                                              ; preds = %102, %89
  %105 = load %struct.adapter*, %struct.adapter** %9, align 8
  %106 = call i32 @t3_seeprom_wp(%struct.adapter* %105, i32 0)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %140

110:                                              ; preds = %104
  %111 = load i32*, i32** %13, align 8
  store i32* %111, i32** %12, align 8
  br label %112

112:                                              ; preds = %128, %110
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i1 [ false, %112 ], [ %117, %115 ]
  br i1 %119, label %120, label %133

120:                                              ; preds = %118
  %121 = load %struct.adapter*, %struct.adapter** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @t3_seeprom_write(%struct.adapter* %121, i32 %122, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %129, 4
  store i32 %130, i32* %11, align 4
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %12, align 8
  br label %112

133:                                              ; preds = %118
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load %struct.adapter*, %struct.adapter** %9, align 8
  %138 = call i32 @t3_seeprom_wp(%struct.adapter* %137, i32 1)
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %109, %88
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = icmp ne i32* %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @kfree(i32* %145)
  br label %147

147:                                              ; preds = %144, %140
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %60, %25
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @t3_seeprom_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @t3_seeprom_wp(%struct.adapter*, i32) #1

declare dso_local i32 @t3_seeprom_write(%struct.adapter*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
