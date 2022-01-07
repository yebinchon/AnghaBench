; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { i32 }
%struct.ieee802154_hw_addr_filt = type { i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"filter\0A\00", align 1
@IEEE802154_AFILT_SADDR_CHANGED = common dso_local global i64 0, align 8
@REG_SADRH = common dso_local global i64 0, align 8
@REG_SADRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Set short addr to %04hx\0A\00", align 1
@IEEE802154_AFILT_IEEEADDR_CHANGED = common dso_local global i64 0, align 8
@REG_EADR0 = common dso_local global i64 0, align 8
@IEEE802154_AFILT_PANID_CHANGED = common dso_local global i64 0, align 8
@REG_PANIDH = common dso_local global i64 0, align 8
@REG_PANIDL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Set PANID to %04hx\0A\00", align 1
@IEEE802154_AFILT_PANC_CHANGED = common dso_local global i64 0, align 8
@BIT_PANCOORD = common dso_local global i32 0, align 4
@REG_RXMCR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Set Pan Coord to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.ieee802154_hw_addr_filt*, i64)* @mrf24j40_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_filter(%struct.ieee802154_hw* %0, %struct.ieee802154_hw_addr_filt* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca %struct.ieee802154_hw_addr_filt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mrf24j40*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %5, align 8
  store %struct.ieee802154_hw_addr_filt* %1, %struct.ieee802154_hw_addr_filt** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %17, i32 0, i32 0
  %19 = load %struct.mrf24j40*, %struct.mrf24j40** %18, align 8
  store %struct.mrf24j40* %19, %struct.mrf24j40** %8, align 8
  %20 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %21 = call i32 @printdev(%struct.mrf24j40* %20)
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @IEEE802154_AFILT_SADDR_CHANGED, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %3
  %28 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %29 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @le16_to_cpu(i8* %30)
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %35 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @le16_to_cpu(i8* %36)
  %38 = and i32 %37, 255
  store i32 %38, i32* %10, align 4
  %39 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %40 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @REG_SADRH, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @regmap_write(i32 %41, i64 %42, i32 %43)
  %45 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %46 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @REG_SADRL, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @regmap_write(i32 %47, i64 %48, i32 %49)
  %51 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %52 = call i32 @printdev(%struct.mrf24j40* %51)
  %53 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %54 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %27, %3
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @IEEE802154_AFILT_IEEEADDR_CHANGED, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %64 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %65 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %64, i32 0, i32 3
  %66 = call i32 @memcpy(i32* %63, i32* %65, i32 8)
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %83, %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %72 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* @REG_EADR0, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regmap_write(i32 %73, i64 %77, i32 %81)
  br label %83

83:                                               ; preds = %70
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %67

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %57
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @IEEE802154_AFILT_PANID_CHANGED, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %87
  %93 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %94 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @le16_to_cpu(i8* %95)
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 255
  store i32 %98, i32* %14, align 4
  %99 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %100 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @le16_to_cpu(i8* %101)
  %103 = and i32 %102, 255
  store i32 %103, i32* %13, align 4
  %104 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %105 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* @REG_PANIDH, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @regmap_write(i32 %106, i64 %107, i32 %108)
  %110 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %111 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* @REG_PANIDL, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @regmap_write(i32 %112, i64 %113, i32 %114)
  %116 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %117 = call i32 @printdev(%struct.mrf24j40* %116)
  %118 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %119 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32, i8*, ...) @dev_dbg(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %92, %87
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @IEEE802154_AFILT_PANC_CHANGED, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %122
  %128 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %129 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @BIT_PANCOORD, align 4
  store i32 %133, i32* %15, align 4
  br label %135

134:                                              ; preds = %127
  store i32 0, i32* %15, align 4
  br label %135

135:                                              ; preds = %134, %132
  %136 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %137 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @REG_RXMCR, align 4
  %140 = load i32, i32* @BIT_PANCOORD, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %4, align 4
  br label %158

147:                                              ; preds = %135
  %148 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %149 = call i32 @printdev(%struct.mrf24j40* %148)
  %150 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %151 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %156 = call i32 (i32, i8*, ...) @dev_dbg(i32 %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %147, %122
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %145
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
