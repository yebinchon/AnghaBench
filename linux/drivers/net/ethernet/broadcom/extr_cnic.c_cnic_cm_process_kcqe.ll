; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_process_kcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_process_kcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 (%struct.cnic_sock*, i32)*, %struct.cnic_sock* }
%struct.cnic_sock = type { i32, i32 }
%struct.kcqe = type { i32 }
%struct.l4_kcq = type { i32, i64, i64, i32 }
%struct.iscsi_kcqe = type { i32 }

@FCOE_RAMROD_CMD_ID_TERMINATE_CONN = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_OFFLOAD_PG = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_UPDATE_PG = common dso_local global i32 0, align 4
@MAX_CM_SK_TBL_SZ = common dso_local global i64 0, align 8
@SK_F_OFFLD_SCHED = common dso_local global i32 0, align 4
@SK_F_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@L4_KCQE_COMPLETION_STATUS_PARITY_ERROR = common dso_local global i32 0, align 4
@SK_F_HW_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"RAMROD CLOSE compl with status 0x%x completion status 0x%x\0A\00", align 1
@CNIC_F_BNX2X_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.kcqe*)* @cnic_cm_process_kcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_cm_process_kcqe(%struct.cnic_dev* %0, %struct.kcqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kcqe*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.l4_kcq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.cnic_sock*, align 8
  %10 = alloca %struct.iscsi_kcqe*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kcqe* %1, %struct.kcqe** %4, align 8
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %11, i32 0, i32 2
  %13 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  store %struct.cnic_local* %13, %struct.cnic_local** %5, align 8
  %14 = load %struct.kcqe*, %struct.kcqe** %4, align 8
  %15 = bitcast %struct.kcqe* %14 to %struct.l4_kcq*
  store %struct.l4_kcq* %15, %struct.l4_kcq** %6, align 8
  %16 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %17 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FCOE_RAMROD_CMD_ID_TERMINATE_CONN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %24 = load %struct.kcqe*, %struct.kcqe** %4, align 8
  %25 = call i32 @cnic_process_fcoe_term_conn(%struct.cnic_dev* %23, %struct.kcqe* %24)
  br label %190

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @L4_KCQE_OPCODE_VALUE_OFFLOAD_PG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @L4_KCQE_OPCODE_VALUE_UPDATE_PG, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %26
  %35 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %36 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %37 = call i32 @cnic_cm_process_offld_pg(%struct.cnic_dev* %35, %struct.l4_kcq* %36)
  br label %190

38:                                               ; preds = %30
  %39 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %40 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %47 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @MAX_CM_SK_TBL_SZ, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %190

54:                                               ; preds = %49
  %55 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %56 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %55, i32 0, i32 1
  %57 = load %struct.cnic_sock*, %struct.cnic_sock** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %57, i64 %58
  store %struct.cnic_sock* %59, %struct.cnic_sock** %9, align 8
  %60 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %61 = call i32 @csk_hold(%struct.cnic_sock* %60)
  %62 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %63 = call i32 @cnic_in_use(%struct.cnic_sock* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %67 = call i32 @csk_put(%struct.cnic_sock* %66)
  br label %190

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  switch i32 %69, label %187 [
    i32 129, label %70
    i32 134, label %84
    i32 131, label %116
    i32 132, label %140
    i32 136, label %140
    i32 133, label %140
    i32 130, label %140
    i32 128, label %140
    i32 135, label %158
  ]

70:                                               ; preds = %68
  %71 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %72 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %77 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %78 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %77, i32 0, i32 1
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %81 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %82 = call i32 @cnic_cm_upcall(%struct.cnic_local* %80, %struct.cnic_sock* %81, i32 134)
  br label %83

83:                                               ; preds = %75, %70
  br label %187

84:                                               ; preds = %68
  %85 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %86 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %91 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %92 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %91, i32 0, i32 1
  %93 = call i32 @set_bit(i32 %90, i32* %92)
  br label %106

94:                                               ; preds = %84
  %95 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %96 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @L4_KCQE_COMPLETION_STATUS_PARITY_ERROR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* @SK_F_HW_ERR, align 4
  %102 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %103 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %102, i32 0, i32 1
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %100, %94
  br label %106

106:                                              ; preds = %105, %89
  %107 = call i32 (...) @smp_mb__before_atomic()
  %108 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %109 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %110 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %109, i32 0, i32 1
  %111 = call i32 @clear_bit(i32 %108, i32* %110)
  %112 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %113 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @cnic_cm_upcall(%struct.cnic_local* %112, %struct.cnic_sock* %113, i32 %114)
  br label %187

116:                                              ; preds = %68
  %117 = load %struct.kcqe*, %struct.kcqe** %4, align 8
  %118 = bitcast %struct.kcqe* %117 to %struct.iscsi_kcqe*
  store %struct.iscsi_kcqe* %118, %struct.iscsi_kcqe** %10, align 8
  %119 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %120 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.iscsi_kcqe*, %struct.iscsi_kcqe** %10, align 8
  %125 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %187

129:                                              ; preds = %123, %116
  %130 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %131 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %134 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.iscsi_kcqe*, %struct.iscsi_kcqe** %10, align 8
  %137 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @netdev_warn(i32 %132, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %138)
  store i32 136, i32* %7, align 4
  br label %140

140:                                              ; preds = %68, %68, %68, %68, %68, %129
  %141 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %142 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @L4_KCQE_COMPLETION_STATUS_PARITY_ERROR, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32, i32* @SK_F_HW_ERR, align 4
  %148 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %149 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %148, i32 0, i32 1
  %150 = call i32 @set_bit(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %146, %140
  %152 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %153 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %152, i32 0, i32 0
  %154 = load i32 (%struct.cnic_sock*, i32)*, i32 (%struct.cnic_sock*, i32)** %153, align 8
  %155 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 %154(%struct.cnic_sock* %155, i32 %156)
  br label %187

158:                                              ; preds = %68
  %159 = load i32, i32* @CNIC_F_BNX2X_CLASS, align 4
  %160 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %161 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %160, i32 0, i32 0
  %162 = call i32 @test_bit(i32 %159, i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %166 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %167 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %166, i32 0, i32 1
  %168 = call i32 @test_bit(i32 %165, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %164
  %171 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %172 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 136
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %177 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %176, i32 0, i32 0
  %178 = load i32 (%struct.cnic_sock*, i32)*, i32 (%struct.cnic_sock*, i32)** %177, align 8
  %179 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %180 = call i32 %178(%struct.cnic_sock* %179, i32 133)
  br label %186

181:                                              ; preds = %170, %164, %158
  %182 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %183 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @cnic_cm_upcall(%struct.cnic_local* %182, %struct.cnic_sock* %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %175
  br label %187

187:                                              ; preds = %68, %186, %151, %128, %106, %83
  %188 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %189 = call i32 @csk_put(%struct.cnic_sock* %188)
  br label %190

190:                                              ; preds = %187, %65, %53, %34, %22
  ret void
}

declare dso_local i32 @cnic_process_fcoe_term_conn(%struct.cnic_dev*, %struct.kcqe*) #1

declare dso_local i32 @cnic_cm_process_offld_pg(%struct.cnic_dev*, %struct.l4_kcq*) #1

declare dso_local i32 @csk_hold(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i32 @csk_put(%struct.cnic_sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cnic_cm_upcall(%struct.cnic_local*, %struct.cnic_sock*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
