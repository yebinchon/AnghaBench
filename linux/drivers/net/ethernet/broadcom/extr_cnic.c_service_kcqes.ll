; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_service_kcqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_service_kcqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.TYPE_2__**, i32*, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.cnic_ulp_ops = type { i32 (i32, %struct.TYPE_2__**, i32)* }

@KCQE_RAMROD_COMPLETION = common dso_local global i64 0, align 8
@KCQE_FLAGS_LAYER_MASK_L5_RDMA = common dso_local global i64 0, align 8
@CNIC_ULP_RDMA = common dso_local global i32 0, align 4
@KCQE_FLAGS_LAYER_MASK_L5_ISCSI = common dso_local global i64 0, align 8
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@KCQE_FLAGS_LAYER_MASK_L5_FCOE = common dso_local global i64 0, align 8
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@KCQE_FLAGS_LAYER_MASK_L4 = common dso_local global i64 0, align 8
@CNIC_ULP_L4 = common dso_local global i32 0, align 4
@KCQE_FLAGS_LAYER_MASK_L2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unknown type of KCQE(0x%x)\0A\00", align 1
@DRV_CTL_RET_L5_SPQ_CREDIT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32)* @service_kcqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_kcqes(%struct.cnic_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cnic_ulp_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %14, i32 0, i32 1
  %16 = load %struct.cnic_local*, %struct.cnic_local** %15, align 8
  store %struct.cnic_local* %16, %struct.cnic_local** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %148, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %155

20:                                               ; preds = %17
  %21 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @cnic_get_kcqe_layer_mask(i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @KCQE_RAMROD_COMPLETION, align 8
  %34 = and i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %20
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %48 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @cnic_get_kcqe_layer_mask(i64 %58)
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %76

63:                                               ; preds = %46
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @KCQE_RAMROD_COMPLETION, align 8
  %66 = and i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %42

76:                                               ; preds = %62, %42
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L5_RDMA, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @CNIC_ULP_RDMA, align 4
  store i32 %81, i32* %10, align 4
  br label %114

82:                                               ; preds = %76
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L5_ISCSI, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  store i32 %87, i32* %10, align 4
  br label %113

88:                                               ; preds = %82
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L5_FCOE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @CNIC_ULP_FCOE, align 4
  store i32 %93, i32* %10, align 4
  br label %112

94:                                               ; preds = %88
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L4, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @CNIC_ULP_L4, align 4
  store i32 %99, i32* %10, align 4
  br label %111

100:                                              ; preds = %94
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L2, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %148

105:                                              ; preds = %100
  %106 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %107 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @netdev_err(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %109)
  br label %148

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %92
  br label %113

113:                                              ; preds = %112, %86
  br label %114

114:                                              ; preds = %113, %80
  %115 = call i32 (...) @rcu_read_lock()
  %116 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %117 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.cnic_ulp_ops* @rcu_dereference(i32 %122)
  store %struct.cnic_ulp_ops* %123, %struct.cnic_ulp_ops** %9, align 8
  %124 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %9, align 8
  %125 = call i64 @likely(%struct.cnic_ulp_ops* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %114
  %128 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %9, align 8
  %129 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %128, i32 0, i32 0
  %130 = load i32 (i32, %struct.TYPE_2__**, i32)*, i32 (i32, %struct.TYPE_2__**, i32)** %129, align 8
  %131 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %132 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %139 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %140, i64 %142
  %144 = load i32, i32* %7, align 4
  %145 = call i32 %130(i32 %137, %struct.TYPE_2__** %143, i32 %144)
  br label %146

146:                                              ; preds = %127, %114
  %147 = call i32 (...) @rcu_read_unlock()
  br label %148

148:                                              ; preds = %146, %105, %104
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %17

155:                                              ; preds = %17
  %156 = load i32, i32* %8, align 4
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %161 = load i32, i32* @DRV_CTL_RET_L5_SPQ_CREDIT_CMD, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @cnic_spq_completion(%struct.cnic_dev* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %155
  ret void
}

declare dso_local i64 @cnic_get_kcqe_layer_mask(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.cnic_ulp_ops*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cnic_spq_completion(%struct.cnic_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
