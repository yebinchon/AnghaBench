; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_reg_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_reg_test = type { i64, i64, i32, i64, i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Adapter removed - register test blocked\0A\00", align 1
@reg_test_82598 = common dso_local global %struct.ixgbe_reg_test* null, align 8
@reg_test_82599 = common dso_local global %struct.ixgbe_reg_test* null, align 8
@IXGBE_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32*)* @ixgbe_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_reg_test(%struct.ixgbe_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ixgbe_reg_test*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ixgbe_removed(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @drv, align 4
  %21 = call i32 (i32, i8*, ...) @e_err(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  store i32 1, i32* %22, align 4
  store i32 1, i32* %3, align 4
  br label %195

23:                                               ; preds = %2
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %33 [
    i32 133, label %29
    i32 132, label %31
    i32 131, label %31
    i32 130, label %31
    i32 129, label %31
    i32 128, label %31
  ]

29:                                               ; preds = %23
  store i64 2147480575, i64* %11, align 8
  %30 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** @reg_test_82598, align 8
  store %struct.ixgbe_reg_test* %30, %struct.ixgbe_reg_test** %6, align 8
  br label %35

31:                                               ; preds = %23, %23, %23, %23, %23
  store i64 2147480335, i64* %11, align 8
  %32 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** @reg_test_82599, align 8
  store %struct.ixgbe_reg_test* %32, %struct.ixgbe_reg_test** %6, align 8
  br label %35

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  store i32 1, i32* %34, align 4
  store i32 1, i32* %3, align 4
  br label %195

35:                                               ; preds = %31, %29
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* @IXGBE_STATUS, align 8
  %39 = call i64 @ixgbe_read_reg(%struct.TYPE_5__* %37, i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 0
  %42 = load i64, i64* @IXGBE_STATUS, align 8
  %43 = call i64 @ixgbe_read_reg(%struct.TYPE_5__* %41, i64 %42)
  %44 = load i64, i64* %11, align 8
  %45 = and i64 %43, %44
  store i64 %45, i64* %7, align 8
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* @IXGBE_STATUS, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @ixgbe_write_reg(%struct.TYPE_5__* %47, i64 %48, i64 %49)
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* @IXGBE_STATUS, align 8
  %54 = call i64 @ixgbe_read_reg(%struct.TYPE_5__* %52, i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = and i64 %54, %55
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %35
  %61 = load i32, i32* @drv, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 (i32, i8*, ...) @e_err(i32 %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %63)
  %65 = load i32*, i32** %5, align 8
  store i32 1, i32* %65, align 4
  store i32 1, i32* %3, align 4
  br label %195

66:                                               ; preds = %35
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 0
  %69 = load i64, i64* @IXGBE_STATUS, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @ixgbe_write_reg(%struct.TYPE_5__* %68, i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %190, %66
  %73 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %74 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %193

77:                                               ; preds = %72
  store i64 0, i64* %10, align 8
  br label %78

78:                                               ; preds = %187, %77
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %81 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %190

84:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  %85 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %86 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %182 [
    i32 139, label %88
    i32 138, label %104
    i32 134, label %120
    i32 137, label %133
    i32 135, label %149
    i32 136, label %165
  ]

88:                                               ; preds = %84
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %92 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = mul nsw i64 %94, 64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %98 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %101 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @reg_pattern_test(%struct.ixgbe_adapter* %89, i32* %90, i64 %96, i32 %99, i64 %102)
  store i32 %103, i32* %12, align 4
  br label %182

104:                                              ; preds = %84
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %108 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = mul nsw i64 %110, 64
  %112 = add nsw i64 %109, %111
  %113 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %114 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %117 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @reg_set_and_check(%struct.ixgbe_adapter* %105, i32* %106, i64 %112, i32 %115, i64 %118)
  store i32 %119, i32* %12, align 4
  br label %182

120:                                              ; preds = %84
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 0
  %123 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %124 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = mul nsw i64 %126, 64
  %128 = add nsw i64 %125, %127
  %129 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %130 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ixgbe_write_reg(%struct.TYPE_5__* %122, i64 %128, i64 %131)
  br label %182

133:                                              ; preds = %84
  %134 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %137 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = mul nsw i64 %139, 4
  %141 = add nsw i64 %138, %140
  %142 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %143 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %146 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @reg_pattern_test(%struct.ixgbe_adapter* %134, i32* %135, i64 %141, i32 %144, i64 %147)
  store i32 %148, i32* %12, align 4
  br label %182

149:                                              ; preds = %84
  %150 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %153 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = mul nsw i64 %155, 8
  %157 = add nsw i64 %154, %156
  %158 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %159 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %162 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @reg_pattern_test(%struct.ixgbe_adapter* %150, i32* %151, i64 %157, i32 %160, i64 %163)
  store i32 %164, i32* %12, align 4
  br label %182

165:                                              ; preds = %84
  %166 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %169 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 4
  %172 = load i64, i64* %10, align 8
  %173 = mul nsw i64 %172, 8
  %174 = add nsw i64 %171, %173
  %175 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %176 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %179 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @reg_pattern_test(%struct.ixgbe_adapter* %166, i32* %167, i64 %174, i32 %177, i64 %180)
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %84, %165, %149, %133, %120, %104, %88
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 1, i32* %3, align 4
  br label %195

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %10, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %10, align 8
  br label %78

190:                                              ; preds = %78
  %191 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %192 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %191, i32 1
  store %struct.ixgbe_reg_test* %192, %struct.ixgbe_reg_test** %6, align 8
  br label %72

193:                                              ; preds = %72
  %194 = load i32*, i32** %5, align 8
  store i32 0, i32* %194, align 4
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %185, %60, %33, %19
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i32 @e_err(i32, i8*, ...) #1

declare dso_local i64 @ixgbe_read_reg(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ixgbe_write_reg(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @reg_pattern_test(%struct.ixgbe_adapter*, i32*, i64, i32, i64) #1

declare dso_local i32 @reg_set_and_check(%struct.ixgbe_adapter*, i32*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
