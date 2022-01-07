; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.ixgbevf_q_vector** }
%struct.ixgbevf_q_vector = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IXGBE_MAX_EITR = common dso_local global i32 0, align 4
@IXGBE_20K_ITR = common dso_local global i8* null, align 8
@IXGBE_12K_ITR = common dso_local global i8* null, align 8
@NON_Q_VECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ixgbevf_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ixgbevf_adapter*, align 8
  %7 = alloca %struct.ixgbevf_q_vector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbevf_adapter* %13, %struct.ixgbevf_adapter** %6, align 8
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 3
  %16 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %15, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %16, i64 0
  %18 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %17, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 3
  %26 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %25, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %26, i64 0
  %28 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %27, align 8
  %29 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %164

41:                                               ; preds = %33, %23, %2
  %42 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %46 = ashr i32 %45, 2
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %53 = ashr i32 %52, 2
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %164

58:                                               ; preds = %48
  %59 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 2
  %68 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %76

70:                                               ; preds = %58
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** @IXGBE_20K_ITR, align 8
  store i8* %82, i8** %11, align 8
  br label %89

83:                                               ; preds = %76
  %84 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %11, align 8
  br label %89

89:                                               ; preds = %83, %81
  %90 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 2
  %99 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %100 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %107

101:                                              ; preds = %89
  %102 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i8*, i8** @IXGBE_12K_ITR, align 8
  store i8* %113, i8** %10, align 8
  br label %120

114:                                              ; preds = %107
  %115 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %116 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  store i8* %119, i8** %10, align 8
  br label %120

120:                                              ; preds = %114, %112
  %121 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %122 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @NON_Q_VECTORS, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %160, %120
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %132 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %131, i32 0, i32 3
  %133 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %133, i64 %135
  %137 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %136, align 8
  store %struct.ixgbevf_q_vector* %137, %struct.ixgbevf_q_vector** %7, align 8
  %138 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %7, align 8
  %139 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %130
  %144 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %7, align 8
  %145 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %143
  %150 = load i8*, i8** %10, align 8
  %151 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %7, align 8
  %152 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %157

153:                                              ; preds = %143, %130
  %154 = load i8*, i8** %11, align 8
  %155 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %7, align 8
  %156 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %7, align 8
  %159 = call i32 @ixgbevf_write_eitr(%struct.ixgbevf_q_vector* %158)
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %126

163:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %55, %38
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_write_eitr(%struct.ixgbevf_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
