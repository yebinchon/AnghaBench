; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_get_iff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_get_iff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tun_get_iff\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*, %struct.ifreq*)* @tun_get_iff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_get_iff(%struct.tun_struct* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca %struct.ifreq*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %5 = load i32, i32* @KERN_INFO, align 4
  %6 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %7 = call i32 @tun_debug(i32 %5, %struct.tun_struct* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strcpy(i32 %10, i32 %15)
  %17 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %18 = call i32 @tun_flags(%struct.tun_struct* %17)
  %19 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @tun_debug(i32, %struct.tun_struct*, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @tun_flags(%struct.tun_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
