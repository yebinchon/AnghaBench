; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_22__, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32 }
%struct.hdlcdrv_state = type { %struct.TYPE_28__*, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_17__, i32, %struct.TYPE_23__, %struct.TYPE_20__, %struct.TYPE_15__ }
%struct.TYPE_28__ = type { i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)*, i32 }
%struct.hdlcdrv_ioctl = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i8*, i32, %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_24__ = type { i32, i32, i8* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i64, i32* }
%struct.TYPE_26__ = type { i64, i64, i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @hdlcdrv_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcdrv_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdlcdrv_state*, align 8
  %9 = alloca %struct.hdlcdrv_ioctl, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.hdlcdrv_state* @netdev_priv(%struct.net_device* %10)
  store %struct.hdlcdrv_state* %11, %struct.hdlcdrv_state** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %17 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %19 = icmp ne %struct.TYPE_28__* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %22 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %29 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = load i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)** %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(%struct.net_device* %33, %struct.ifreq* %34, %struct.hdlcdrv_ioctl* %9, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %416

37:                                               ; preds = %20, %15
  %38 = load i32, i32* @ENOIOCTLCMD, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %416

40:                                               ; preds = %3
  %41 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @copy_from_user(%struct.hdlcdrv_ioctl* %9, i32 %43, i32 128)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %416

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %52 [
    i32 134, label %77
    i32 129, label %113
    i32 133, label %159
    i32 128, label %206
    i32 131, label %264
    i32 130, label %311
    i32 137, label %330
    i32 132, label %373
    i32 135, label %376
    i32 136, label %379
  ]

52:                                               ; preds = %49
  %53 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %54 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %54, align 8
  %56 = icmp ne %struct.TYPE_28__* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %59 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 0
  %62 = load i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %66 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %65, i32 0, i32 0
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = load i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)** %68, align 8
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 %69(%struct.net_device* %70, %struct.ifreq* %71, %struct.hdlcdrv_ioctl* %9, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %416

74:                                               ; preds = %57, %52
  %75 = load i32, i32* @ENOIOCTLCMD, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %416

77:                                               ; preds = %49
  %78 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %79 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %86 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  %92 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %93 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  %99 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %100 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %107 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  br label %406

113:                                              ; preds = %49
  %114 = load i32, i32* @CAP_NET_ADMIN, align 4
  %115 = call i32 @capable(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @EACCES, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %416

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %126 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 4
  store i32 %124, i32* %127, align 4
  %128 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %133 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %140 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  %142 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %147 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %154 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %157 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 4
  store i32 0, i32* %4, align 4
  br label %416

159:                                              ; preds = %49
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 6
  store i32 %162, i32* %165, align 8
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 5
  store i32 %168, i32* %171, align 4
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 4
  store i32 %174, i32* %177, align 8
  %178 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %179 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  store i32 %181, i32* %184, align 4
  %185 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %186 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 8
  %192 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %193 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  %199 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %200 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 8
  br label %406

206:                                              ; preds = %49
  %207 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %208 = call i32 @capable(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load %struct.net_device*, %struct.net_device** %5, align 8
  %212 = call i32 @netif_running(%struct.net_device* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210, %206
  %215 = load i32, i32* @EACCES, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %4, align 4
  br label %416

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.net_device*, %struct.net_device** %5, align 8
  %223 = getelementptr inbounds %struct.net_device, %struct.net_device* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  %224 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.net_device*, %struct.net_device** %5, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 4
  %230 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.net_device*, %struct.net_device** %5, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %241 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %240, i32 0, i32 7
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 3
  store i32 %239, i32* %242, align 4
  %243 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %248 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %247, i32 0, i32 7
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 2
  store i32 %246, i32* %249, align 4
  %250 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %255 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %254, i32 0, i32 7
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  %257 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %262 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 4
  store i32 0, i32* %4, align 4
  br label %416

264:                                              ; preds = %49
  %265 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %266 = call i8* @hdlcdrv_ptt(%struct.hdlcdrv_state* %265)
  %267 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 6
  store i8* %266, i8** %269, align 8
  %270 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %271 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %270, i32 0, i32 6
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 5
  store i32 %273, i32* %276, align 4
  %277 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %278 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 4
  store i32 %279, i32* %282, align 8
  %283 = load %struct.net_device*, %struct.net_device** %5, align 8
  %284 = getelementptr inbounds %struct.net_device, %struct.net_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 3
  store i32 %286, i32* %289, align 4
  %290 = load %struct.net_device*, %struct.net_device** %5, align 8
  %291 = getelementptr inbounds %struct.net_device, %struct.net_device* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 2
  store i32 %293, i32* %296, align 8
  %297 = load %struct.net_device*, %struct.net_device** %5, align 8
  %298 = getelementptr inbounds %struct.net_device, %struct.net_device* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 1
  store i32 %300, i32* %303, align 4
  %304 = load %struct.net_device*, %struct.net_device** %5, align 8
  %305 = getelementptr inbounds %struct.net_device, %struct.net_device* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 0
  store i32 %307, i32* %310, align 8
  br label %406

311:                                              ; preds = %49
  %312 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %313 = call i8* @hdlcdrv_ptt(%struct.hdlcdrv_state* %312)
  %314 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 2
  store i8* %313, i8** %316, align 8
  %317 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %318 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 1
  store i32 %320, i32* %323, align 4
  %324 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %325 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 0
  store i32 %326, i32* %329, align 8
  br label %406

330:                                              ; preds = %49
  %331 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %332 = call i32 @capable(i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  %335 = load i32, i32* @EPERM, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %4, align 4
  br label %416

337:                                              ; preds = %330
  %338 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %339 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp sle i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %337
  %344 = load i32, i32* @EINVAL, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %4, align 4
  br label %416

346:                                              ; preds = %337
  %347 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @INT_MAX, align 4
  %351 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %352 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sdiv i32 %350, %354
  %356 = icmp sgt i32 %349, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %346
  %358 = load i32, i32* @EINVAL, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %4, align 4
  br label %416

360:                                              ; preds = %346
  %361 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %365 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = mul nsw i32 %363, %367
  %369 = sdiv i32 %368, 16
  %370 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %371 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 1
  store i32 %369, i32* %372, align 4
  store i32 0, i32* %4, align 4
  br label %416

373:                                              ; preds = %49
  %374 = load i32, i32* @EPERM, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %4, align 4
  br label %416

376:                                              ; preds = %49
  %377 = load i32, i32* @EPERM, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %4, align 4
  br label %416

379:                                              ; preds = %49
  %380 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %381 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %380, i32 0, i32 0
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %381, align 8
  %383 = icmp ne %struct.TYPE_28__* %382, null
  br i1 %383, label %384, label %401

384:                                              ; preds = %379
  %385 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %386 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %385, i32 0, i32 0
  %387 = load %struct.TYPE_28__*, %struct.TYPE_28__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %384
  %392 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %8, align 8
  %396 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %395, i32 0, i32 0
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @strncpy(i8* %394, i32 %399, i32 8)
  br label %406

401:                                              ; preds = %384, %379
  %402 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 1
  %404 = load i8*, i8** %403, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 0
  store i8 0, i8* %405, align 1
  br label %406

406:                                              ; preds = %401, %391, %311, %264, %159, %77
  %407 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %408 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = call i64 @copy_to_user(i32 %409, %struct.hdlcdrv_ioctl* %9, i32 128)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %406
  %413 = load i32, i32* @EFAULT, align 4
  %414 = sub nsw i32 0, %413
  store i32 %414, i32* %4, align 4
  br label %416

415:                                              ; preds = %406
  store i32 0, i32* %4, align 4
  br label %416

416:                                              ; preds = %415, %412, %376, %373, %360, %357, %343, %334, %217, %214, %120, %117, %74, %64, %46, %37, %27
  %417 = load i32, i32* %4, align 4
  ret i32 %417
}

declare dso_local %struct.hdlcdrv_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hdlcdrv_ioctl*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i8* @hdlcdrv_ptt(%struct.hdlcdrv_state*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hdlcdrv_ioctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
