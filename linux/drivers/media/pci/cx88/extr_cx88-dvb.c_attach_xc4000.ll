; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dvb.c_attach_xc4000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dvb.c_attach_xc4000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xc4000_config = type { i32 }
%struct.dvb_frontend = type { i32 }
%struct.vb2_dvb_frontend = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"dvb frontend not attached. Can't attach xc4000\0A\00", align 1
@xc4000_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"xc4000 attach failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"xc4000 attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*, %struct.xc4000_config*)* @attach_xc4000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_xc4000(%struct.cx8802_dev* %0, %struct.xc4000_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx8802_dev*, align 8
  %5 = alloca %struct.xc4000_config*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.vb2_dvb_frontend*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %4, align 8
  store %struct.xc4000_config* %1, %struct.xc4000_config** %5, align 8
  store %struct.vb2_dvb_frontend* null, %struct.vb2_dvb_frontend** %7, align 8
  %8 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %8, i32 0, i32 1
  %10 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32* %9, i32 1)
  store %struct.vb2_dvb_frontend* %10, %struct.vb2_dvb_frontend** %7, align 8
  %11 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %12 = icmp ne %struct.vb2_dvb_frontend* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %18 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %16
  %27 = load i32, i32* @xc4000_attach, align 4
  %28 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %29 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %33 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.xc4000_config*, %struct.xc4000_config** %5, align 8
  %37 = call %struct.dvb_frontend* @dvb_attach(i32 %27, i32* %31, i32* %35, %struct.xc4000_config* %36)
  store %struct.dvb_frontend* %37, %struct.dvb_frontend** %6, align 8
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %39 = icmp ne %struct.dvb_frontend* %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %26
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %43 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @dvb_frontend_detach(i32* %45)
  %47 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %48 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dvb_unregister_frontend(i32* %50)
  %52 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %7, align 8
  %53 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %26
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %40, %22, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, i32*, i32*, %struct.xc4000_config*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
