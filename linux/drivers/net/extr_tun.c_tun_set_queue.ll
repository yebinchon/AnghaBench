; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_set_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_set_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tun_file* }
%struct.tun_file = type { %struct.tun_struct*, i32 }
%struct.tun_struct = type { i32, i32, i32 }
%struct.ifreq = type { i32 }

@IFF_ATTACH_QUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_NAPI = common dso_local global i32 0, align 4
@IFF_NAPI_FRAGS = common dso_local global i32 0, align 4
@IFF_DETACH_QUEUE = common dso_local global i32 0, align 4
@IFF_MULTI_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.ifreq*)* @tun_set_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_set_queue(%struct.file* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.ifreq*, align 8
  %5 = alloca %struct.tun_file*, align 8
  %6 = alloca %struct.tun_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  store %struct.tun_file* %10, %struct.tun_file** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @rtnl_lock()
  %12 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_ATTACH_QUEUE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %20 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %19, i32 0, i32 0
  %21 = load %struct.tun_struct*, %struct.tun_struct** %20, align 8
  store %struct.tun_struct* %21, %struct.tun_struct** %6, align 8
  %22 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %23 = icmp ne %struct.tun_struct* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %95

27:                                               ; preds = %18
  %28 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %29 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @security_tun_dev_attach_queue(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %95

35:                                               ; preds = %27
  %36 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %39 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_NAPI, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %44 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_NAPI_FRAGS, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @tun_attach(%struct.tun_struct* %36, %struct.file* %37, i32 0, i32 %42, i32 %47, i32 1)
  store i32 %48, i32* %7, align 4
  br label %86

49:                                               ; preds = %2
  %50 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %51 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_DETACH_QUEUE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %58 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.tun_struct* @rtnl_dereference(i32 %59)
  store %struct.tun_struct* %60, %struct.tun_struct** %6, align 8
  %61 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %62 = icmp ne %struct.tun_struct* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %65 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFF_MULTI_QUEUE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %72 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %71, i32 0, i32 0
  %73 = load %struct.tun_struct*, %struct.tun_struct** %72, align 8
  %74 = icmp ne %struct.tun_struct* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %63, %56
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %80 = call i32 @__tun_detach(%struct.tun_file* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %75
  br label %85

82:                                               ; preds = %49
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %81
  br label %86

86:                                               ; preds = %85, %35
  %87 = load i32, i32* %7, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %91 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @netdev_state_change(i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %34, %24
  %96 = call i32 (...) @rtnl_unlock()
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @security_tun_dev_attach_queue(i32) #1

declare dso_local i32 @tun_attach(%struct.tun_struct*, %struct.file*, i32, i32, i32, i32) #1

declare dso_local %struct.tun_struct* @rtnl_dereference(i32) #1

declare dso_local i32 @__tun_detach(%struct.tun_file*, i32) #1

declare dso_local i32 @netdev_state_change(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
