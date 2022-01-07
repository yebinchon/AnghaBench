; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_adminq_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_adminq_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_cq = type { i32, i32 }
%struct.ionic_cq_info = type { %struct.ionic_admin_comp* }
%struct.ionic_admin_comp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_cq*, %struct.ionic_cq_info*)* @ionic_adminq_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_adminq_service(%struct.ionic_cq* %0, %struct.ionic_cq_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_cq*, align 8
  %5 = alloca %struct.ionic_cq_info*, align 8
  %6 = alloca %struct.ionic_admin_comp*, align 8
  store %struct.ionic_cq* %0, %struct.ionic_cq** %4, align 8
  store %struct.ionic_cq_info* %1, %struct.ionic_cq_info** %5, align 8
  %7 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %5, align 8
  %8 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %7, i32 0, i32 0
  %9 = load %struct.ionic_admin_comp*, %struct.ionic_admin_comp** %8, align 8
  store %struct.ionic_admin_comp* %9, %struct.ionic_admin_comp** %6, align 8
  %10 = load %struct.ionic_admin_comp*, %struct.ionic_admin_comp** %6, align 8
  %11 = getelementptr inbounds %struct.ionic_admin_comp, %struct.ionic_admin_comp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ionic_cq*, %struct.ionic_cq** %4, align 8
  %14 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @color_match(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.ionic_cq*, %struct.ionic_cq** %4, align 8
  %21 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %5, align 8
  %24 = load %struct.ionic_admin_comp*, %struct.ionic_admin_comp** %6, align 8
  %25 = getelementptr inbounds %struct.ionic_admin_comp, %struct.ionic_admin_comp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = call i32 @ionic_q_service(i32 %22, %struct.ionic_cq_info* %23, i32 %27)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @color_match(i32, i32) #1

declare dso_local i32 @ionic_q_service(i32, %struct.ionic_cq_info*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
