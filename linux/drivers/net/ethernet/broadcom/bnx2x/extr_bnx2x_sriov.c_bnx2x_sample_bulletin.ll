; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_sample_bulletin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_sample_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__, %struct.pf_vf_bulletin_content* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.pf_vf_bulletin_content }
%struct.pf_vf_bulletin_content = type { i64, i64, i32, i32, i32, %struct.pf_vf_bulletin_content* }

@BULLETIN_ATTEMPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"bad crc on bulletin board. Contained %x computed %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"pf to vf bulletin board crc was wrong %d consecutive times. Aborting\0A\00", align 1
@PFVF_BULLETIN_CRC_ERR = common dso_local global i32 0, align 4
@PFVF_BULLETIN_UNCHANGED = common dso_local global i32 0, align 4
@MAC_ADDR_VALID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@LINK_VALID = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"link update speed %d flags %x\0A\00", align 1
@VFPF_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@VFPF_LINK_REPORT_FULL_DUPLEX = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_FD = common dso_local global i32 0, align 4
@VFPF_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@VFPF_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@PFVF_BULLETIN_UPDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_sample_bulletin(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.pf_vf_bulletin_content*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BULLETIN_ATTEMPTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 3
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 4
  %16 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %15, align 8
  %17 = call i32 @memcpy(%struct.TYPE_6__* %13, %struct.pf_vf_bulletin_content* %16, i32 4)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = call i64 @bnx2x_crc_vf_bulletin(%struct.pf_vf_bulletin_content* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  br label %42

30:                                               ; preds = %11
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %7

42:                                               ; preds = %29, %7
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BULLETIN_ATTEMPTS, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @PFVF_BULLETIN_CRC_ERR, align 4
  store i32 %49, i32* %2, align 4
  br label %179

50:                                               ; preds = %42
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store %struct.pf_vf_bulletin_content* %53, %struct.pf_vf_bulletin_content** %4, align 8
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %59 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @PFVF_BULLETIN_UNCHANGED, align 4
  store i32 %63, i32* %2, align 4
  br label %179

64:                                               ; preds = %50
  %65 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %66 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MAC_ADDR_VALID, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %64
  %73 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %74 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %73, i32 0, i32 5
  %75 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %74, align 8
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ether_addr_equal(%struct.pf_vf_bulletin_content* %75, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %72
  %83 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %89 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %88, i32 0, i32 5
  %90 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %89, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i32 @memcpy(%struct.TYPE_6__* %87, %struct.pf_vf_bulletin_content* %90, i32 %91)
  br label %93

93:                                               ; preds = %82, %72, %64
  %94 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %95 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LINK_VALID, align 4
  %98 = shl i32 1, %97
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %173

101:                                              ; preds = %93
  %102 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %103 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %104 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %107 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DP(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %111 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %114 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %117 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %120 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @VFPF_LINK_REPORT_LINK_DOWN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %101
  %126 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %127 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = call i32 @__set_bit(i32 %126, i64* %129)
  br label %131

131:                                              ; preds = %125, %101
  %132 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %133 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @VFPF_LINK_REPORT_FULL_DUPLEX, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* @BNX2X_LINK_REPORT_FD, align 4
  %140 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %141 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = call i32 @__set_bit(i32 %139, i64* %142)
  br label %144

144:                                              ; preds = %138, %131
  %145 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %146 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @VFPF_LINK_REPORT_RX_FC_ON, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @BNX2X_LINK_REPORT_RX_FC_ON, align 4
  %153 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %154 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = call i32 @__set_bit(i32 %152, i64* %155)
  br label %157

157:                                              ; preds = %151, %144
  %158 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %159 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @VFPF_LINK_REPORT_TX_FC_ON, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i32, i32* @BNX2X_LINK_REPORT_TX_FC_ON, align 4
  %166 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %167 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = call i32 @__set_bit(i32 %165, i64* %168)
  br label %170

170:                                              ; preds = %164, %157
  %171 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %172 = call i32 @__bnx2x_link_report(%struct.bnx2x* %171)
  br label %173

173:                                              ; preds = %170, %93
  %174 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %175 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %174, i32 0, i32 0
  %176 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %4, align 8
  %177 = call i32 @memcpy(%struct.TYPE_6__* %175, %struct.pf_vf_bulletin_content* %176, i32 40)
  %178 = load i32, i32* @PFVF_BULLETIN_UPDATED, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %173, %62, %46
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.pf_vf_bulletin_content*, i32) #1

declare dso_local i64 @bnx2x_crc_vf_bulletin(%struct.pf_vf_bulletin_content*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, ...) #1

declare dso_local i32 @ether_addr_equal(%struct.pf_vf_bulletin_content*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @__bnx2x_link_report(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
