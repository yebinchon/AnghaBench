; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_copper_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_copper_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i64, i8*, i8*, i32, i32, i32 }

@BNX2_PHY_FLAG_MDIX = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i8* null, align 8
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@MII_BNX2_EXT_STATUS = common dso_local global i32 0, align 4
@EXT_STATUS_MDIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_copper_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_copper_linkup(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %8 = load i32, i32* @BNX2_PHY_FLAG_MDIX, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bnx2_read_phy(%struct.bnx2* %14, i32 %17, i32* %3)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @BMCR_ANENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %129

23:                                               ; preds = %1
  %24 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %25 = load i32, i32* @MII_CTRL1000, align 4
  %26 = call i32 @bnx2_read_phy(%struct.bnx2* %24, i32 %25, i32* %4)
  %27 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %28 = load i32, i32* @MII_STAT1000, align 4
  %29 = call i32 @bnx2_read_phy(%struct.bnx2* %27, i32 %28, i32* %5)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 2
  %33 = and i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %23
  %39 = load i8*, i8** @SPEED_1000, align 8
  %40 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %41 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @DUPLEX_FULL, align 8
  %43 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %44 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %128

45:                                               ; preds = %23
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** @SPEED_1000, align 8
  %52 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %53 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @DUPLEX_HALF, align 8
  %55 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %56 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %127

57:                                               ; preds = %45
  %58 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %59 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %60 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bnx2_read_phy(%struct.bnx2* %58, i32 %61, i32* %4)
  %63 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %64 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %65 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bnx2_read_phy(%struct.bnx2* %63, i32 %66, i32* %5)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @ADVERTISE_100FULL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %57
  %76 = load i8*, i8** @SPEED_100, align 8
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @DUPLEX_FULL, align 8
  %80 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %81 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %126

82:                                               ; preds = %57
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @ADVERTISE_100HALF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i8*, i8** @SPEED_100, align 8
  %89 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %90 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @DUPLEX_HALF, align 8
  %92 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %93 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  br label %125

94:                                               ; preds = %82
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @ADVERTISE_10FULL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i8*, i8** @SPEED_10, align 8
  %101 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %102 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @DUPLEX_FULL, align 8
  %104 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %105 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %124

106:                                              ; preds = %94
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ADVERTISE_10HALF, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i8*, i8** @SPEED_10, align 8
  %113 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %114 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @DUPLEX_HALF, align 8
  %116 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %117 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  br label %123

118:                                              ; preds = %106
  %119 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %120 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %119, i32 0, i32 3
  store i8* null, i8** %120, align 8
  %121 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %122 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %111
  br label %124

124:                                              ; preds = %123, %99
  br label %125

125:                                              ; preds = %124, %87
  br label %126

126:                                              ; preds = %125, %75
  br label %127

127:                                              ; preds = %126, %50
  br label %128

128:                                              ; preds = %127, %38
  br label %156

129:                                              ; preds = %1
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @BMCR_SPEED100, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i8*, i8** @SPEED_100, align 8
  %136 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %137 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  br label %142

138:                                              ; preds = %129
  %139 = load i8*, i8** @SPEED_10, align 8
  %140 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %141 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @BMCR_FULLDPLX, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i8*, i8** @DUPLEX_FULL, align 8
  %149 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %150 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  br label %155

151:                                              ; preds = %142
  %152 = load i8*, i8** @DUPLEX_HALF, align 8
  %153 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %154 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %128
  %157 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %158 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %163 = load i32, i32* @MII_BNX2_EXT_STATUS, align 4
  %164 = call i32 @bnx2_read_phy(%struct.bnx2* %162, i32 %163, i32* %7)
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @EXT_STATUS_MDIX, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load i32, i32* @BNX2_PHY_FLAG_MDIX, align 4
  %171 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %172 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %161
  br label %176

176:                                              ; preds = %175, %156
  ret i32 0
}

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
