; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_vf_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_vf_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_ipsec* }
%struct.ixgbe_ipsec = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@IXGBE_IPSEC_MAX_SA_COUNT = common dso_local global i32 0, align 4
@IXGBE_RXTXMOD_VF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ipsec_vf_clear(%struct.ixgbe_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_ipsec*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 0
  %9 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %8, align 8
  store %struct.ixgbe_ipsec* %9, %struct.ixgbe_ipsec** %5, align 8
  %10 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %11 = icmp ne %struct.ixgbe_ipsec* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %133

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %70, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IXGBE_IPSEC_MAX_SA_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %73

25:                                               ; preds = %23
  %26 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %70

36:                                               ; preds = %25
  %37 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IXGBE_RXTXMOD_VF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %36
  %49 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %50 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %48
  %60 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %61 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ixgbe_ipsec_del_sa(i32 %67)
  br label %69

69:                                               ; preds = %59, %48, %36
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %14

73:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %130, %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @IXGBE_IPSEC_MAX_SA_COUNT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %80 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i1 [ false, %74 ], [ %82, %78 ]
  br i1 %84, label %85, label %133

85:                                               ; preds = %83
  %86 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %87 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %85
  br label %130

96:                                               ; preds = %85
  %97 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %98 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @IXGBE_RXTXMOD_VF, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %96
  %109 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %110 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %108
  %120 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %5, align 8
  %121 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ixgbe_ipsec_del_sa(i32 %127)
  br label %129

129:                                              ; preds = %119, %108, %96
  br label %130

130:                                              ; preds = %129, %95
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %74

133:                                              ; preds = %12, %83
  ret void
}

declare dso_local i32 @ixgbe_ipsec_del_sa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
