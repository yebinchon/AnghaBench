; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_ser_fdx.c_baycom_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_ser_fdx.c_baycom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hdlcdrv_ioctl = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.baycom_state = type { i32, %struct.TYPE_8__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.baycom_ioctl = type { i32, %struct.TYPE_7__ }

@EINVAL = common dso_local global i32 0, align 4
@HDLCDRV_MAGIC = common dso_local global i64 0, align 8
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ser%u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"ser12,ser3,ser24\00", align 1
@HDLCDRV_PARMASK_IOBASE = common dso_local global i32 0, align 4
@HDLCDRV_PARMASK_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)* @baycom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_ioctl(%struct.net_device* %0, %struct.ifreq* %1, %struct.hdlcdrv_ioctl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.hdlcdrv_ioctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.baycom_state*, align 8
  %11 = alloca %struct.baycom_ioctl, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.ifreq* %1, %struct.ifreq** %7, align 8
  store %struct.hdlcdrv_ioctl* %2, %struct.hdlcdrv_ioctl** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %136

17:                                               ; preds = %4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %18)
  store %struct.baycom_state* %19, %struct.baycom_state** %10, align 8
  %20 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %21 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @ENOIOCTLCMD, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %136

34:                                               ; preds = %17
  %35 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %36 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %38 [
    i32 131, label %39
    i32 128, label %77
    i32 130, label %100
    i32 129, label %116
  ]

38:                                               ; preds = %34
  br label %120

39:                                               ; preds = %34
  %40 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %41 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %45 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 100
  %48 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %50 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %39
  %54 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %55 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %59 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %65 = call i32 @strcat(i8* %57, i8* %64)
  br label %66

66:                                               ; preds = %53, %39
  %67 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %68 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %71 = call i64 @copy_to_user(i32 %69, %struct.hdlcdrv_ioctl* %70, i32 32)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %136

76:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %136

77:                                               ; preds = %34
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = call i32 @netif_running(%struct.net_device* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @CAP_NET_ADMIN, align 4
  %83 = call i32 @capable(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* @EACCES, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %136

88:                                               ; preds = %81
  %89 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %90 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 7
  store i8 0, i8* %93, align 1
  %94 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %95 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %96 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @baycom_setmode(%struct.baycom_state* %94, i8* %98)
  store i32 %99, i32* %5, align 4
  br label %136

100:                                              ; preds = %34
  %101 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %102 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcpy(i8* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %107 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %110 = call i64 @copy_to_user(i32 %108, %struct.hdlcdrv_ioctl* %109, i32 32)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load i32, i32* @EFAULT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %136

115:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %136

116:                                              ; preds = %34
  %117 = load i32, i32* @HDLCDRV_PARMASK_IOBASE, align 4
  %118 = load i32, i32* @HDLCDRV_PARMASK_IRQ, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %5, align 4
  br label %136

120:                                              ; preds = %38
  %121 = bitcast %struct.baycom_ioctl* %11 to %struct.hdlcdrv_ioctl*
  %122 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %123 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @copy_from_user(%struct.hdlcdrv_ioctl* %121, i32 %124, i32 32)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @EFAULT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %136

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.baycom_ioctl, %struct.baycom_ioctl* %11, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %133 [
  ]

133:                                              ; preds = %130
  %134 = load i32, i32* @ENOIOCTLCMD, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %127, %116, %115, %112, %88, %85, %76, %73, %31, %14
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hdlcdrv_ioctl*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @baycom_setmode(%struct.baycom_state*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @copy_from_user(%struct.hdlcdrv_ioctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
