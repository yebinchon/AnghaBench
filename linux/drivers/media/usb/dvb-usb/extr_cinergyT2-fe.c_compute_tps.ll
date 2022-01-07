; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-fe.c_compute_tps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-fe.c_compute_tps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtv_frontend_properties*)* @compute_tps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_tps(%struct.dtv_frontend_properties* %0) #0 {
  %2 = alloca %struct.dtv_frontend_properties*, align 8
  %3 = alloca i32, align 4
  store %struct.dtv_frontend_properties* %0, %struct.dtv_frontend_properties** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %2, align 8
  %5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 145, label %7
    i32 144, label %10
    i32 143, label %13
    i32 142, label %16
    i32 146, label %19
    i32 141, label %19
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, 128
  store i32 %9, i32* %3, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, 256
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 384
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 512
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %1, %1
  br label %20

20:                                               ; preds = %1, %19
  br label %21

21:                                               ; preds = %20, %16, %13, %10, %7
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %2, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %38 [
    i32 145, label %25
    i32 144, label %28
    i32 143, label %31
    i32 142, label %34
    i32 146, label %37
    i32 141, label %37
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, 16
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, 32
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 48
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, 64
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %21, %21
  br label %38

38:                                               ; preds = %21, %37
  br label %39

39:                                               ; preds = %38, %34, %31, %28, %25
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %2, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %50 [
    i32 132, label %43
    i32 131, label %46
    i32 130, label %49
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, 8192
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, 16384
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %39, %49
  br label %51

51:                                               ; preds = %50, %46, %43
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %2, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %59 [
    i32 128, label %55
    i32 129, label %58
  ]

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %51, %58
  br label %60

60:                                               ; preds = %59, %55
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %2, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %74 [
    i32 140, label %64
    i32 137, label %67
    i32 138, label %70
    i32 139, label %73
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, 4
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, 8
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, 12
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %60, %73
  br label %75

75:                                               ; preds = %74, %70, %67, %64
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %2, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %89 [
    i32 136, label %79
    i32 135, label %82
    i32 134, label %85
    i32 133, label %88
  ]

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, 1024
  store i32 %81, i32* %3, align 4
  br label %90

82:                                               ; preds = %75
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, 2048
  store i32 %84, i32* %3, align 4
  br label %90

85:                                               ; preds = %75
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, 3072
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %75, %88
  br label %90

90:                                               ; preds = %89, %85, %82, %79
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
