; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_init_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_init_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bttv = type { i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.tuner_setup = type { i64, i32, i64*, i32, i32 }
%struct.v4l2_priv_tun_config = type { i64, i32, i64*, i32, i32 }

@ADDR_UNSET = common dso_local global i32 0, align 4
@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@TUNER_ABSENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@ADDRS_RADIO = common dso_local global i32 0, align 4
@ADDRS_DEMOD = common dso_local global i32 0, align 4
@ADDRS_TV_WITH_DEMOD = common dso_local global i32 0, align 4
@T_ANALOG_TV = common dso_local global i32 0, align 4
@T_RADIO = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_type_addr = common dso_local global i32 0, align 4
@TUNER_TDA9887 = common dso_local global i32 0, align 4
@s_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_init_tuner(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tuner_setup, align 8
  %5 = alloca %struct.v4l2_priv_tun_config, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %6 = load i32, i32* @ADDR_UNSET, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ADDR_UNSET, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %9 = load %struct.bttv*, %struct.bttv** %2, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %7, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %19 = load %struct.bttv*, %struct.bttv** %2, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.bttv*, %struct.bttv** %2, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TUNER_ABSENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %26
  %33 = load %struct.bttv*, %struct.bttv** %2, align 8
  %34 = getelementptr inbounds %struct.bttv, %struct.bttv* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.bttv*, %struct.bttv** %2, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load %struct.bttv*, %struct.bttv** %2, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* @ADDRS_RADIO, align 4
  %45 = call i32 @v4l2_i2c_tuner_addrs(i32 %44)
  %46 = call i32 @v4l2_i2c_new_subdev(i32* %40, i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %45)
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.bttv*, %struct.bttv** %2, align 8
  %49 = getelementptr inbounds %struct.bttv, %struct.bttv* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load %struct.bttv*, %struct.bttv** %2, align 8
  %52 = getelementptr inbounds %struct.bttv, %struct.bttv* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* @ADDRS_DEMOD, align 4
  %55 = call i32 @v4l2_i2c_tuner_addrs(i32 %54)
  %56 = call i32 @v4l2_i2c_new_subdev(i32* %50, i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %55)
  %57 = load %struct.bttv*, %struct.bttv** %2, align 8
  %58 = getelementptr inbounds %struct.bttv, %struct.bttv* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load %struct.bttv*, %struct.bttv** %2, align 8
  %61 = getelementptr inbounds %struct.bttv, %struct.bttv* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* @ADDRS_TV_WITH_DEMOD, align 4
  %64 = call i32 @v4l2_i2c_tuner_addrs(i32 %63)
  %65 = call i32 @v4l2_i2c_new_subdev(i32* %59, i32* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %64)
  %66 = load i32, i32* @T_ANALOG_TV, align 4
  %67 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %4, i32 0, i32 4
  store i32 %66, i32* %67, align 4
  %68 = load %struct.bttv*, %struct.bttv** %2, align 8
  %69 = getelementptr inbounds %struct.bttv, %struct.bttv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %4, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %3, align 4
  %73 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %4, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = load %struct.bttv*, %struct.bttv** %2, align 8
  %75 = getelementptr inbounds %struct.bttv, %struct.bttv* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %47
  %79 = load i32, i32* @T_RADIO, align 4
  %80 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %4, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %47
  %84 = load %struct.bttv*, %struct.bttv** %2, align 8
  %85 = load i32, i32* @tuner, align 4
  %86 = load i32, i32* @s_type_addr, align 4
  %87 = bitcast %struct.tuner_setup* %4 to %struct.v4l2_priv_tun_config*
  %88 = call i32 @bttv_call_all(%struct.bttv* %84, i32 %85, i32 %86, %struct.v4l2_priv_tun_config* %87)
  br label %89

89:                                               ; preds = %83, %26
  %90 = load %struct.bttv*, %struct.bttv** %2, align 8
  %91 = getelementptr inbounds %struct.bttv, %struct.bttv* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i32, i32* @TUNER_TDA9887, align 4
  %96 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %5, i32 0, i32 3
  store i32 %95, i32* %96, align 8
  %97 = load %struct.bttv*, %struct.bttv** %2, align 8
  %98 = getelementptr inbounds %struct.bttv, %struct.bttv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %5, i32 0, i32 2
  store i64* %98, i64** %99, align 8
  %100 = load %struct.bttv*, %struct.bttv** %2, align 8
  %101 = load i32, i32* @tuner, align 4
  %102 = load i32, i32* @s_config, align 4
  %103 = call i32 @bttv_call_all(%struct.bttv* %100, i32 %101, i32 %102, %struct.v4l2_priv_tun_config* %5)
  br label %104

104:                                              ; preds = %94, %89
  ret void
}

declare dso_local i32 @v4l2_i2c_new_subdev(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_tuner_addrs(i32) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_priv_tun_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
