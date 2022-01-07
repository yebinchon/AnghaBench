; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_pbf_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_pbf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@PBF_REG_DISABLE_NEW_TASK_PROC_P0 = common dso_local global i64 0, align 8
@PBF_REG_P0_INIT_CRD = common dso_local global i64 0, align 8
@PBF_REG_P0_CREDIT = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"init_crd 0x%x  crd 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"BUG! init_crd 0x%x != crd 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@PBF_REG_P0_PAUSE_ENABLE = common dso_local global i64 0, align 8
@PBF_REG_P0_ARB_THRSH = common dso_local global i64 0, align 8
@ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_OVERHEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid line_speed 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PBF updated to speed %d credit %d\0A\00", align 1
@PBF_REG_INIT_P0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, i32, i32)* @bnx2x_pbf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_pbf_update(%struct.link_params* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.link_params*, %struct.link_params** %5, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 1
  %16 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  store %struct.bnx2x* %16, %struct.bnx2x** %8, align 8
  %17 = load %struct.link_params*, %struct.link_params** %5, align 8
  %18 = getelementptr inbounds %struct.link_params, %struct.link_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  store i32 1000, i32* %12, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %21 = load i64, i64* @PBF_REG_DISABLE_NEW_TASK_PROC_P0, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @REG_WR(%struct.bnx2x* %20, i64 %25, i32 1)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %28 = load i64, i64* @PBF_REG_P0_INIT_CRD, align 8
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @REG_RD(%struct.bnx2x* %27, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %35 = load i64, i64* @PBF_REG_P0_CREDIT, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @REG_RD(%struct.bnx2x* %34, i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @NETIF_MSG_LINK, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i8*, i32, ...) @DP(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %54, %3
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  %55 = call i32 @usleep_range(i32 5000, i32 10000)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %57 = load i64, i64* @PBF_REG_P0_CREDIT, align 8
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i32 @REG_RD(%struct.bnx2x* %56, i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  br label %45

65:                                               ; preds = %52
  %66 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %67 = load i64, i64* @PBF_REG_P0_CREDIT, align 8
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = call i32 @REG_RD(%struct.bnx2x* %66, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load i32, i32* @NETIF_MSG_LINK, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i32, i8*, i32, ...) @DP(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %186

83:                                               ; preds = %65
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SPEED_10, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SPEED_100, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @SPEED_1000, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SPEED_2500, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100, %96, %92, %88, %83
  %105 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %106 = load i64, i64* @PBF_REG_P0_PAUSE_ENABLE, align 8
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = call i32 @REG_WR(%struct.bnx2x* %105, i64 %110, i32 1)
  %112 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %113 = load i64, i64* @PBF_REG_P0_ARB_THRSH, align 8
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = call i32 @REG_WR(%struct.bnx2x* %112, i64 %117, i32 0)
  store i32 778, i32* %10, align 4
  br label %151

119:                                              ; preds = %100
  %120 = load i32, i32* @ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %121 = load i32, i32* @ETH_OVERHEAD, align 4
  %122 = add nsw i32 %120, %121
  %123 = sdiv i32 %122, 16
  store i32 %123, i32* %13, align 4
  %124 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %125 = load i64, i64* @PBF_REG_P0_PAUSE_ENABLE, align 8
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = call i32 @REG_WR(%struct.bnx2x* %124, i64 %129, i32 0)
  %131 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %132 = load i64, i64* @PBF_REG_P0_ARB_THRSH, align 8
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %132, %135
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @REG_WR(%struct.bnx2x* %131, i64 %136, i32 %137)
  %139 = load i32, i32* %7, align 4
  switch i32 %139, label %144 [
    i32 128, label %140
  ]

140:                                              ; preds = %119
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 553
  %143 = sub nsw i32 %142, 22
  store i32 %143, i32* %10, align 4
  br label %150

144:                                              ; preds = %119
  %145 = load i32, i32* @NETIF_MSG_LINK, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i32, i8*, i32, ...) @DP(i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %186

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %104
  %152 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %153 = load i64, i64* @PBF_REG_P0_INIT_CRD, align 8
  %154 = load i32, i32* %9, align 4
  %155 = mul nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %153, %156
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @REG_WR(%struct.bnx2x* %152, i64 %157, i32 %158)
  %160 = load i32, i32* @NETIF_MSG_LINK, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 (i32, i8*, i32, ...) @DP(i32 %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %165 = load i64, i64* @PBF_REG_INIT_P0, align 8
  %166 = load i32, i32* %9, align 4
  %167 = mul nsw i32 %166, 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %165, %168
  %170 = call i32 @REG_WR(%struct.bnx2x* %164, i64 %169, i32 1)
  %171 = call i32 @usleep_range(i32 5000, i32 10000)
  %172 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %173 = load i64, i64* @PBF_REG_INIT_P0, align 8
  %174 = load i32, i32* %9, align 4
  %175 = mul nsw i32 %174, 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %173, %176
  %178 = call i32 @REG_WR(%struct.bnx2x* %172, i64 %177, i32 0)
  %179 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %180 = load i64, i64* @PBF_REG_DISABLE_NEW_TASK_PROC_P0, align 8
  %181 = load i32, i32* %9, align 4
  %182 = mul nsw i32 %181, 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %180, %183
  %185 = call i32 @REG_WR(%struct.bnx2x* %179, i64 %184, i32 0)
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %151, %144, %76
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
