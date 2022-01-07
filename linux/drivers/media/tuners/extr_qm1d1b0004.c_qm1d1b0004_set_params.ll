; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1b0004.c_qm1d1b0004_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1b0004.c_qm1d1b0004_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__, %struct.qm1d1b0004_state* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qm1d1b0004_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@QM1D1B0004_XTL_FREQ = common dso_local global i32 0, align 4
@QM1D1B0004_PSC_MASK = common dso_local global i32 0, align 4
@QM1D1B0004_CFG_LPF_DFLT = common dso_local global i32 0, align 4
@QM1D1B0004_LPF_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @qm1d1b0004_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm1d1b0004_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.qm1d1b0004_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %14, align 8
  store %struct.qm1d1b0004_state* %15, %struct.qm1d1b0004_state** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @QM1D1B0004_XTL_FREQ, align 4
  %21 = sdiv i32 %20, 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %23 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DIV_ROUND_CLOSEST(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lookup_cb(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @QM1D1B0004_PSC_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 1
  %43 = and i32 %42, -32
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 15
  %46 = or i32 %43, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %30
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 8
  %50 = or i32 64, %49
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %55 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 224, %57
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %63 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %66 = call i32 @i2c_master_send(i32 %64, i32* %65, i32 4)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %47
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %2, align 4
  br label %148

71:                                               ; preds = %47
  %72 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %73 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 228, %75
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %76, i32* %77, align 16
  %78 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %79 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %82 = call i32 @i2c_master_send(i32 %80, i32* %81, i32 1)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %2, align 4
  br label %148

87:                                               ; preds = %71
  %88 = call i32 @msleep(i32 20)
  %89 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %90 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @QM1D1B0004_CFG_LPF_DFLT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 1000
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %96, %87
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @QM1D1B0004_LPF_FALLBACK, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @DIV_ROUND_UP(i32 %108, i32 2000)
  %110 = sub nsw i32 %109, 2
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, 12
  %113 = shl i32 %112, 1
  %114 = or i32 228, %113
  %115 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %116 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %114, %118
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %119, i32* %120, align 16
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %122, 3
  %124 = shl i32 %123, 2
  %125 = or i32 %121, %124
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %125, i32* %126, align 4
  %127 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %128 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %131 = call i32 @i2c_master_send(i32 %129, i32* %130, i32 2)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %107
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %2, align 4
  br label %148

136:                                              ; preds = %107
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %137, align 16
  %138 = load %struct.qm1d1b0004_state*, %struct.qm1d1b0004_state** %4, align 8
  %139 = getelementptr inbounds %struct.qm1d1b0004_state, %struct.qm1d1b0004_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %142 = call i32 @i2c_master_recv(i32 %140, i32* %141, i32 1)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %2, align 4
  br label %148

147:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %145, %134, %85, %69
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @lookup_cb(i32) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
