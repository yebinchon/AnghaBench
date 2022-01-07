; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_bt8xx_dst_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_bt8xx_dst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i32, i32, i64, i32, i32, i32, i64, i32, i32, i32 }

@bt8xx_dst_init.sat_tuna_188 = internal global [10 x i32] [i32 9, i32 0, i32 3, i32 182, i32 1, i32 0, i32 115, i32 33, i32 0, i32 0], align 16
@bt8xx_dst_init.sat_tuna_204 = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 85, i32 189, i32 80, i32 0, i32 0], align 16
@bt8xx_dst_init.ter_tuna_188 = internal global [10 x i32] [i32 9, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@bt8xx_dst_init.ter_tuna_204 = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@bt8xx_dst_init.cab_tuna_188 = internal global [10 x i32] [i32 9, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@bt8xx_dst_init.cab_tuna_204 = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@bt8xx_dst_init.atsc_tuner = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@INVERSION_OFF = common dso_local global i32 0, align 4
@SEC_VOLTAGE_13 = common dso_local global i32 0, align 4
@SEC_TONE_OFF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @bt8xx_dst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt8xx_dst_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  store %struct.dst_state* %6, %struct.dst_state** %3, align 8
  %7 = load i32, i32* @INVERSION_OFF, align 4
  %8 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %9 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %11 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @SEC_TONE_OFF, align 4
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 1
  store i32 7000000, i32* %21, align 4
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %24 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %26 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %32 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %35 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bt8xx_dst_init.sat_tuna_188, i64 0, i64 0), i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bt8xx_dst_init.sat_tuna_204, i64 0, i64 0)
  %42 = call i32 @memcpy(i32 %33, i32* %41, i32 40)
  br label %95

43:                                               ; preds = %1
  %44 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %45 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %51 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %54 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bt8xx_dst_init.ter_tuna_188, i64 0, i64 0), i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bt8xx_dst_init.ter_tuna_204, i64 0, i64 0)
  %61 = call i32 @memcpy(i32 %52, i32* %60, i32 40)
  br label %94

62:                                               ; preds = %43
  %63 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %64 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %70 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %73 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bt8xx_dst_init.cab_tuna_188, i64 0, i64 0), i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bt8xx_dst_init.cab_tuna_204, i64 0, i64 0)
  %80 = call i32 @memcpy(i32 %71, i32* %79, i32 40)
  br label %93

81:                                               ; preds = %62
  %82 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %83 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %89 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i32 %90, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bt8xx_dst_init.atsc_tuner, i64 0, i64 0), i32 40)
  br label %92

92:                                               ; preds = %87, %81
  br label %93

93:                                               ; preds = %92, %68
  br label %94

94:                                               ; preds = %93, %49
  br label %95

95:                                               ; preds = %94, %30
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
