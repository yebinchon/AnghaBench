; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nfp_nffw_info_fwid_first.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nfp_nffw_info_fwid_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nffw_fwinfo = type { i32 }
%struct.nfp_nffw_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nffw_fwinfo* (%struct.nfp_nffw_info*)* @nfp_nffw_info_fwid_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nffw_fwinfo* @nfp_nffw_info_fwid_first(%struct.nfp_nffw_info* %0) #0 {
  %2 = alloca %struct.nffw_fwinfo*, align 8
  %3 = alloca %struct.nfp_nffw_info*, align 8
  %4 = alloca %struct.nffw_fwinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_nffw_info* %0, %struct.nfp_nffw_info** %3, align 8
  %7 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %7, i32 0, i32 0
  %9 = call i32 @nffw_res_fwinfos(i32* %8, %struct.nffw_fwinfo** %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.nffw_fwinfo* null, %struct.nffw_fwinfo** %2, align 8
  br label %35

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nffw_fwinfo, %struct.nffw_fwinfo* %19, i64 %21
  %23 = call i64 @nffw_fwinfo_loaded_get(%struct.nffw_fwinfo* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nffw_fwinfo, %struct.nffw_fwinfo* %26, i64 %28
  store %struct.nffw_fwinfo* %29, %struct.nffw_fwinfo** %2, align 8
  br label %35

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %14
  store %struct.nffw_fwinfo* null, %struct.nffw_fwinfo** %2, align 8
  br label %35

35:                                               ; preds = %34, %25, %12
  %36 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %2, align 8
  ret %struct.nffw_fwinfo* %36
}

declare dso_local i32 @nffw_res_fwinfos(i32*, %struct.nffw_fwinfo**) #1

declare dso_local i64 @nffw_fwinfo_loaded_get(%struct.nffw_fwinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
