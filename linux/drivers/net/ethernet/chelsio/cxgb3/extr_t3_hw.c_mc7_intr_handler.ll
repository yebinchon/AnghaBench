; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_mc7_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_mc7_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc7 = type { i64, i32, %struct.TYPE_4__, %struct.adapter* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@A_MC7_INT_CAUSE = common dso_local global i64 0, align 8
@F_CE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s MC7 correctable error at addr 0x%x, data 0x%x 0x%x 0x%x\0A\00", align 1
@A_MC7_CE_ADDR = common dso_local global i64 0, align 8
@A_MC7_CE_DATA0 = common dso_local global i64 0, align 8
@A_MC7_CE_DATA1 = common dso_local global i64 0, align 8
@A_MC7_CE_DATA2 = common dso_local global i64 0, align 8
@F_UE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"%s MC7 uncorrectable error at addr 0x%x, data 0x%x 0x%x 0x%x\0A\00", align 1
@A_MC7_UE_ADDR = common dso_local global i64 0, align 8
@A_MC7_UE_DATA0 = common dso_local global i64 0, align 8
@A_MC7_UE_DATA1 = common dso_local global i64 0, align 8
@A_MC7_UE_DATA2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s MC7 parity error 0x%x\0A\00", align 1
@F_AE = common dso_local global i32 0, align 4
@A_MC7_ERR_ADDR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"%s MC7 address error: 0x%x\0A\00", align 1
@MC7_INTR_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mc7*)* @mc7_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc7_intr_handler(%struct.mc7* %0) #0 {
  %2 = alloca %struct.mc7*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mc7* %0, %struct.mc7** %2, align 8
  %6 = load %struct.mc7*, %struct.mc7** %2, align 8
  %7 = getelementptr inbounds %struct.mc7, %struct.mc7* %6, i32 0, i32 3
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load %struct.mc7*, %struct.mc7** %2, align 8
  %11 = getelementptr inbounds %struct.mc7, %struct.mc7* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @A_MC7_INT_CAUSE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @t3_read_reg(%struct.adapter* %9, i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @F_CE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %1
  %21 = load %struct.mc7*, %struct.mc7** %2, align 8
  %22 = getelementptr inbounds %struct.mc7, %struct.mc7* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load %struct.mc7*, %struct.mc7** %2, align 8
  %28 = getelementptr inbounds %struct.mc7, %struct.mc7* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load %struct.mc7*, %struct.mc7** %2, align 8
  %32 = getelementptr inbounds %struct.mc7, %struct.mc7* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @A_MC7_CE_ADDR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @t3_read_reg(%struct.adapter* %30, i64 %35)
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = load %struct.mc7*, %struct.mc7** %2, align 8
  %39 = getelementptr inbounds %struct.mc7, %struct.mc7* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @A_MC7_CE_DATA0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @t3_read_reg(%struct.adapter* %37, i64 %42)
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = load %struct.mc7*, %struct.mc7** %2, align 8
  %46 = getelementptr inbounds %struct.mc7, %struct.mc7* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @A_MC7_CE_DATA1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @t3_read_reg(%struct.adapter* %44, i64 %49)
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = load %struct.mc7*, %struct.mc7** %2, align 8
  %53 = getelementptr inbounds %struct.mc7, %struct.mc7* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @A_MC7_CE_DATA2, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @t3_read_reg(%struct.adapter* %51, i64 %56)
  %58 = call i32 @CH_WARN(%struct.adapter* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %36, i32 %43, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %20, %1
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @F_UE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %59
  %65 = load %struct.mc7*, %struct.mc7** %2, align 8
  %66 = getelementptr inbounds %struct.mc7, %struct.mc7* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = load %struct.mc7*, %struct.mc7** %2, align 8
  %72 = getelementptr inbounds %struct.mc7, %struct.mc7* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = load %struct.mc7*, %struct.mc7** %2, align 8
  %76 = getelementptr inbounds %struct.mc7, %struct.mc7* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @A_MC7_UE_ADDR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @t3_read_reg(%struct.adapter* %74, i64 %79)
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = load %struct.mc7*, %struct.mc7** %2, align 8
  %83 = getelementptr inbounds %struct.mc7, %struct.mc7* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @A_MC7_UE_DATA0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @t3_read_reg(%struct.adapter* %81, i64 %86)
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = load %struct.mc7*, %struct.mc7** %2, align 8
  %90 = getelementptr inbounds %struct.mc7, %struct.mc7* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @A_MC7_UE_DATA1, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @t3_read_reg(%struct.adapter* %88, i64 %93)
  %95 = load %struct.adapter*, %struct.adapter** %3, align 8
  %96 = load %struct.mc7*, %struct.mc7** %2, align 8
  %97 = getelementptr inbounds %struct.mc7, %struct.mc7* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @A_MC7_UE_DATA2, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @t3_read_reg(%struct.adapter* %95, i64 %100)
  %102 = call i32 (%struct.adapter*, i8*, i32, i32, ...) @CH_ALERT(%struct.adapter* %70, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %80, i32 %87, i32 %94, i32 %101)
  br label %103

103:                                              ; preds = %64, %59
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @G_PE(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load %struct.mc7*, %struct.mc7** %2, align 8
  %109 = getelementptr inbounds %struct.mc7, %struct.mc7* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.adapter*, %struct.adapter** %3, align 8
  %114 = load %struct.mc7*, %struct.mc7** %2, align 8
  %115 = getelementptr inbounds %struct.mc7, %struct.mc7* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @G_PE(i32 %117)
  %119 = call i32 (%struct.adapter*, i8*, i32, i32, ...) @CH_ALERT(%struct.adapter* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %118)
  br label %120

120:                                              ; preds = %107, %103
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @F_AE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.adapter*, %struct.adapter** %3, align 8
  %133 = load %struct.mc7*, %struct.mc7** %2, align 8
  %134 = getelementptr inbounds %struct.mc7, %struct.mc7* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @A_MC7_ERR_ADDR, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @t3_read_reg(%struct.adapter* %132, i64 %137)
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %131, %125
  %140 = load %struct.mc7*, %struct.mc7** %2, align 8
  %141 = getelementptr inbounds %struct.mc7, %struct.mc7* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = load %struct.mc7*, %struct.mc7** %2, align 8
  %147 = getelementptr inbounds %struct.mc7, %struct.mc7* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 (%struct.adapter*, i8*, i32, i32, ...) @CH_ALERT(%struct.adapter* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %139, %120
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @MC7_INTR_FATAL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.adapter*, %struct.adapter** %3, align 8
  %158 = call i32 @t3_fatal_err(%struct.adapter* %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = load %struct.mc7*, %struct.mc7** %2, align 8
  %162 = getelementptr inbounds %struct.mc7, %struct.mc7* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @A_MC7_INT_CAUSE, align 8
  %165 = add nsw i64 %163, %164
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @t3_write_reg(%struct.adapter* %160, i64 %165, i32 %166)
  ret void
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*, i32, i32, ...) #1

declare dso_local i32 @G_PE(i32) #1

declare dso_local i32 @t3_fatal_err(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
