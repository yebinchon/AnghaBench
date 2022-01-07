; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dvb.c_attach_xc3028.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dvb.c_attach_xc3028.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_frontend = type { i32 }
%struct.vb2_dvb_frontend = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.xc2028_ctrl = type { i32 }
%struct.xc2028_config = type { %struct.xc2028_ctrl*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"dvb frontend not attached. Can't attach xc3028\0A\00", align 1
@xc2028_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"xc3028 attach failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"xc3028 attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cx8802_dev*)* @attach_xc3028 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_xc3028(i32 %0, %struct.cx8802_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx8802_dev*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.vb2_dvb_frontend*, align 8
  %8 = alloca %struct.xc2028_ctrl, align 4
  %9 = alloca %struct.xc2028_config, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cx8802_dev* %1, %struct.cx8802_dev** %5, align 8
  store %struct.vb2_dvb_frontend* null, %struct.vb2_dvb_frontend** %7, align 8
  %10 = getelementptr inbounds %struct.xc2028_config, %struct.xc2028_config* %9, i32 0, i32 0
  store %struct.xc2028_ctrl* %8, %struct.xc2028_ctrl** %10, align 8
  %11 = getelementptr inbounds %struct.xc2028_config, %struct.xc2028_config* %9, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.xc2028_config, %struct.xc2028_config* %9, i32 0, i32 2
  %14 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %15 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* %17, i32** %13, align 8
  %18 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %19 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %18, i32 0, i32 1
  %20 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32* %19, i32 1)
  store %struct.vb2_dvb_frontend* %20, %struct.vb2_dvb_frontend** %7, align 8
  %21 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %22 = icmp ne %struct.vb2_dvb_frontend* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %2
  %27 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %28 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %26
  %37 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %38 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @cx88_setup_xc3028(%struct.TYPE_4__* %39, %struct.xc2028_ctrl* %8)
  %41 = load i32, i32* @xc2028_attach, align 4
  %42 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %43 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call %struct.dvb_frontend* @dvb_attach(i32 %41, i32* %45, %struct.xc2028_config* %9)
  store %struct.dvb_frontend* %46, %struct.dvb_frontend** %6, align 8
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %48 = icmp ne %struct.dvb_frontend* %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %36
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %52 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @dvb_frontend_detach(i32* %54)
  %56 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %57 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @dvb_unregister_frontend(i32* %59)
  %61 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %62 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %36
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %49, %32, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cx88_setup_xc3028(%struct.TYPE_4__*, %struct.xc2028_ctrl*) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, i32*, %struct.xc2028_config*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
