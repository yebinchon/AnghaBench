; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_check_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_check_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32, i32 (i32, i32, i32)*, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@ADVERTISE_FULL = common dso_local global i32 0, align 4
@LPA_1000FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"link up, %uMbps, %s-duplex, lpa 0x%04X\0A\00", align 1
@LPA_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_check_media(%struct.mii_if_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_if_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %16 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @netif_carrier_ok(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %8, align 4
  %22 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %23 = call i64 @mii_link_ok(%struct.mii_if_info* %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %182

32:                                               ; preds = %27, %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %37 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netif_carrier_off(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %44 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @netdev_info(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %35
  store i32 0, i32* %4, align 4
  br label %182

48:                                               ; preds = %32
  %49 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %50 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netif_carrier_on(i32 %51)
  %53 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %54 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %62 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @netdev_info(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %57
  store i32 0, i32* %4, align 4
  br label %182

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %71 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %76 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  br label %93

78:                                               ; preds = %69, %66
  %79 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %80 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %79, i32 0, i32 1
  %81 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %80, align 8
  %82 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %83 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %86 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MII_ADVERTISE, align 4
  %89 = call i32 %81(i32 %84, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %92 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %78, %74
  %94 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %95 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %94, i32 0, i32 1
  %96 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %95, align 8
  %97 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %98 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %101 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MII_LPA, align 4
  %104 = call i32 %96(i32 %99, i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %106 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %93
  %110 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %111 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %110, i32 0, i32 1
  %112 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %111, align 8
  %113 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %114 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %117 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MII_STAT1000, align 4
  %120 = call i32 %112(i32 %115, i32 %118, i32 %119)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %109, %93
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @mii_nway_result(i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @ADVERTISE_FULL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @LPA_1000FULL, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %121
  store i32 1, i32* %13, align 4
  br label %137

137:                                              ; preds = %136, %121
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %137
  %141 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %142 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @LPA_1000FULL, align 4
  %146 = load i32, i32* @LPA_1000HALF, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %144, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %160

151:                                              ; preds = %140
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @ADVERTISE_100FULL, align 4
  %154 = load i32, i32* @ADVERTISE_100HALF, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 100, i32 10
  br label %160

160:                                              ; preds = %151, %150
  %161 = phi i32 [ 1000, %150 ], [ %159, %151 ]
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i32, i8*, ...) @netdev_info(i32 %143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %161, i8* %165, i32 %166)
  br label %168

168:                                              ; preds = %160, %137
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168
  %172 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %173 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %171, %168
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %180 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  store i32 1, i32* %4, align 4
  br label %182

181:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %177, %65, %47, %31
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i64 @mii_link_ok(%struct.mii_if_info*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @mii_nway_result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
