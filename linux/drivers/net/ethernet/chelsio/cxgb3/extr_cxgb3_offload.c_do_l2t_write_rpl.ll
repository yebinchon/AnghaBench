; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_do_l2t_write_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_do_l2t_write_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_l2t_write_rpl = type { i64 }

@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unexpected L2T_WRITE_RPL status %u for entry %u\0A\00", align 1
@CPL_RET_BUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*)* @do_l2t_write_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_l2t_write_rpl(%struct.t3cdev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_l2t_write_rpl*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.cpl_l2t_write_rpl* @cplhdr(%struct.sk_buff* %6)
  store %struct.cpl_l2t_write_rpl* %7, %struct.cpl_l2t_write_rpl** %5, align 8
  %8 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %5, align 8
  %9 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CPL_ERR_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %5, align 8
  %15 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %5, align 8
  %18 = call i32 @GET_TID(%struct.cpl_l2t_write_rpl* %17)
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load i32, i32* @CPL_RET_BUF_DONE, align 4
  ret i32 %21
}

declare dso_local %struct.cpl_l2t_write_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_l2t_write_rpl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
