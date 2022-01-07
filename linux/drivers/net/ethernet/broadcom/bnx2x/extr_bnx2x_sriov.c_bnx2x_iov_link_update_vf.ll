; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_link_update_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_link_update_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__*, %struct.bnx2x_link_report_data }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_link_report_data = type { i32, i32 }
%struct.pf_vf_bulletin_content = type { i32, i32, i32 }
%struct.bnx2x_virtf = type { i64 }

@IFLA_VF_LINK_STATE_AUTO = common dso_local global i64 0, align 8
@LINK_VALID = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@VFPF_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_FD = common dso_local global i32 0, align 4
@VFPF_LINK_REPORT_FULL_DUPLEX = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@VFPF_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@VFPF_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@IFLA_VF_LINK_STATE_DISABLE = common dso_local global i64 0, align 8
@IFLA_VF_LINK_STATE_ENABLE = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vf %d mode %u speed %d flags %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to update VF[%d] bulletin\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_iov_link_update_vf(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x_link_report_data*, align 8
  %7 = alloca %struct.pf_vf_bulletin_content*, align 8
  %8 = alloca %struct.bnx2x_virtf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 1
  store %struct.bnx2x_link_report_data* %12, %struct.bnx2x_link_report_data** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @bnx2x_vf_op_prep(%struct.bnx2x* %13, i32 %14, %struct.bnx2x_virtf** %8, %struct.pf_vf_bulletin_content** %7, i32 0)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %186

20:                                               ; preds = %2
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IFLA_VF_LINK_STATE_AUTO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %20
  %32 = load i32, i32* @LINK_VALID, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %35 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %6, align 8
  %39 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %42 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %44 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %46 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %31
  %51 = load i32, i32* @VFPF_LINK_REPORT_LINK_DOWN, align 4
  %52 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %53 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %31
  %57 = load i32, i32* @BNX2X_LINK_REPORT_FD, align 4
  %58 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %6, align 8
  %59 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* @VFPF_LINK_REPORT_FULL_DUPLEX, align 4
  %64 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %65 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i32, i32* @BNX2X_LINK_REPORT_RX_FC_ON, align 4
  %70 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %6, align 8
  %71 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %70, i32 0, i32 0
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @VFPF_LINK_REPORT_RX_FC_ON, align 4
  %76 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %77 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32, i32* @BNX2X_LINK_REPORT_TX_FC_ON, align 4
  %82 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %6, align 8
  %83 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %82, i32 0, i32 0
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* @VFPF_LINK_REPORT_TX_FC_ON, align 4
  %88 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %89 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %80
  br label %151

93:                                               ; preds = %20
  %94 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %95 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IFLA_VF_LINK_STATE_DISABLE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %101 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @VFPF_LINK_REPORT_LINK_DOWN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @LINK_VALID, align 4
  %108 = shl i32 1, %107
  %109 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %110 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @VFPF_LINK_REPORT_LINK_DOWN, align 4
  %114 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %115 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %150

118:                                              ; preds = %99, %93
  %119 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %120 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IFLA_VF_LINK_STATE_ENABLE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %118
  %125 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %126 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @VFPF_LINK_REPORT_LINK_DOWN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %124
  %132 = load i32, i32* @LINK_VALID, align 4
  %133 = shl i32 1, %132
  %134 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %135 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %139 = call i32 @bnx2x_max_speed_cap(%struct.bnx2x* %138)
  %140 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %141 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @VFPF_LINK_REPORT_LINK_DOWN, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %145 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %149

148:                                              ; preds = %124, %118
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %148, %131
  br label %150

150:                                              ; preds = %149, %106
  br label %151

151:                                              ; preds = %150, %92
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %151
  %155 = load i32, i32* @NETIF_MSG_LINK, align 4
  %156 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %160 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %163 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %166 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @DP(i32 %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %158, i64 %161, i32 %164, i32 %167)
  %169 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @bnx2x_post_vf_bulletin(%struct.bnx2x* %169, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %154
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  br label %179

177:                                              ; preds = %154
  br label %178

178:                                              ; preds = %177, %151
  br label %179

179:                                              ; preds = %178, %174
  %180 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %181 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = call i32 @mutex_unlock(i32* %183)
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %179, %18
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @bnx2x_vf_op_prep(%struct.bnx2x*, i32, %struct.bnx2x_virtf**, %struct.pf_vf_bulletin_content**, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_max_speed_cap(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @bnx2x_post_vf_bulletin(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
