; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32 }
%struct.ifreq = type { i32, i32 }
%struct.net_local = type { i32, i64, i32, %struct.TYPE_2__, i32, %struct.sbni_flags }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sbni_flags = type { i32, i64, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FL_SLOW_MODE = common dso_local global i32 0, align 4
@DEF_RXL_DELTA = common dso_local global i32 0, align 4
@DEF_RXL = common dso_local global i64 0, align 8
@rxl_tab = common dso_local global i32* null, align 8
@PR_RES = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @sbni_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_local*, align 8
  %9 = alloca %struct.sbni_flags, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.net_local* @netdev_priv(%struct.net_device* %11)
  store %struct.net_local* %12, %struct.net_local** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %141 [
    i32 131, label %14
    i32 129, label %26
    i32 130, label %37
    i32 128, label %78
  ]

14:                                               ; preds = %3
  %15 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_local*, %struct.net_local** %8, align 8
  %19 = getelementptr inbounds %struct.net_local, %struct.net_local* %18, i32 0, i32 5
  %20 = call i32 @copy_to_user(i32 %17, %struct.sbni_flags* %19, i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %22, %14
  br label %144

26:                                               ; preds = %3
  %27 = load i32, i32* @CAP_NET_ADMIN, align 4
  %28 = call i32 @capable(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %146

33:                                               ; preds = %26
  %34 = load %struct.net_local*, %struct.net_local** %8, align 8
  %35 = getelementptr inbounds %struct.net_local, %struct.net_local* %34, i32 0, i32 5
  %36 = call i32 @memset(%struct.sbni_flags* %35, i32 0, i32 4)
  br label %144

37:                                               ; preds = %3
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = load %struct.net_local*, %struct.net_local** %8, align 8
  %47 = getelementptr inbounds %struct.net_local, %struct.net_local* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load %struct.net_local*, %struct.net_local** %8, align 8
  %52 = getelementptr inbounds %struct.net_local, %struct.net_local* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FL_SLOW_MODE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load %struct.net_local*, %struct.net_local** %8, align 8
  %60 = getelementptr inbounds %struct.net_local, %struct.net_local* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load %struct.net_local*, %struct.net_local** %8, align 8
  %64 = getelementptr inbounds %struct.net_local, %struct.net_local* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %70 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @copy_to_user(i32 %71, %struct.sbni_flags* %9, i32 32)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %37
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %37
  br label %144

78:                                               ; preds = %3
  %79 = load i32, i32* @CAP_NET_ADMIN, align 4
  %80 = call i32 @capable(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %146

85:                                               ; preds = %78
  %86 = load %struct.net_local*, %struct.net_local** %8, align 8
  %87 = getelementptr inbounds %struct.net_local, %struct.net_local* %86, i32 0, i32 2
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %90 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %89, i32 0, i32 1
  %91 = bitcast i32* %90 to %struct.sbni_flags*
  %92 = bitcast %struct.sbni_flags* %9 to i8*
  %93 = bitcast %struct.sbni_flags* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 4 %93, i64 32, i1 false)
  %94 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %85
  %98 = load %struct.net_local*, %struct.net_local** %8, align 8
  %99 = getelementptr inbounds %struct.net_local, %struct.net_local* %98, i32 0, i32 4
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.net_local*, %struct.net_local** %8, align 8
  %103 = getelementptr inbounds %struct.net_local, %struct.net_local* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  br label %111

104:                                              ; preds = %85
  %105 = load i32, i32* @DEF_RXL_DELTA, align 4
  %106 = load %struct.net_local*, %struct.net_local** %8, align 8
  %107 = getelementptr inbounds %struct.net_local, %struct.net_local* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i64, i64* @DEF_RXL, align 8
  %109 = load %struct.net_local*, %struct.net_local** %8, align 8
  %110 = getelementptr inbounds %struct.net_local, %struct.net_local* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %104, %97
  %112 = load i32*, i32** @rxl_tab, align 8
  %113 = load %struct.net_local*, %struct.net_local** %8, align 8
  %114 = getelementptr inbounds %struct.net_local, %struct.net_local* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.net_local*, %struct.net_local** %8, align 8
  %119 = getelementptr inbounds %struct.net_local, %struct.net_local* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %9, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.net_local*, %struct.net_local** %8, align 8
  %124 = getelementptr inbounds %struct.net_local, %struct.net_local* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load %struct.net_local*, %struct.net_local** %8, align 8
  %127 = getelementptr inbounds %struct.net_local, %struct.net_local* %126, i32 0, i32 3
  %128 = bitcast %struct.TYPE_2__* %127 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PR_RES, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.net_device*, %struct.net_device** %5, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CSR1, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outb(i32 %131, i64 %136)
  %138 = load %struct.net_local*, %struct.net_local** %8, align 8
  %139 = getelementptr inbounds %struct.net_local, %struct.net_local* %138, i32 0, i32 2
  %140 = call i32 @spin_unlock(i32* %139)
  br label %144

141:                                              ; preds = %3
  %142 = load i32, i32* @EOPNOTSUPP, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %146

144:                                              ; preds = %111, %77, %33, %25
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %141, %82, %30
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @copy_to_user(i32, %struct.sbni_flags*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @memset(%struct.sbni_flags*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
