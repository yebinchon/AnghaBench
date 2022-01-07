; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_ap_sta_hash_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_ap_sta_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { %struct.sta_info** }
%struct.sta_info = type { i32, %struct.sta_info* }

@.str = private unnamed_addr constant [46 x i8] c"AP: could not remove STA %pM from hash table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_data*, %struct.sta_info*)* @ap_sta_hash_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_sta_hash_del(%struct.ap_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.ap_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.sta_info*, align 8
  store %struct.ap_data* %0, %struct.ap_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %6 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %7 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %6, i32 0, i32 0
  %8 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @STA_HASH(i32 %11)
  %13 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %8, i64 %12
  %14 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  store %struct.sta_info* %14, %struct.sta_info** %5, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %16 = icmp eq %struct.sta_info* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ether_addr_equal(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 1
  %30 = load %struct.sta_info*, %struct.sta_info** %29, align 8
  %31 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %32 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %31, i32 0, i32 0
  %33 = load %struct.sta_info**, %struct.sta_info*** %32, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @STA_HASH(i32 %36)
  %38 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %33, i64 %37
  store %struct.sta_info* %30, %struct.sta_info** %38, align 8
  br label %81

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %59, %39
  %41 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 1
  %43 = load %struct.sta_info*, %struct.sta_info** %42, align 8
  %44 = icmp ne %struct.sta_info* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 1
  %48 = load %struct.sta_info*, %struct.sta_info** %47, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ether_addr_equal(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %45, %40
  %58 = phi i1 [ false, %40 ], [ %56, %45 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 1
  %62 = load %struct.sta_info*, %struct.sta_info** %61, align 8
  store %struct.sta_info* %62, %struct.sta_info** %5, align 8
  br label %40

63:                                               ; preds = %57
  %64 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 1
  %66 = load %struct.sta_info*, %struct.sta_info** %65, align 8
  %67 = icmp ne %struct.sta_info* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 1
  %71 = load %struct.sta_info*, %struct.sta_info** %70, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 1
  %73 = load %struct.sta_info*, %struct.sta_info** %72, align 8
  %74 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 0, i32 1
  store %struct.sta_info* %73, %struct.sta_info** %75, align 8
  br label %81

76:                                               ; preds = %63
  %77 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %17, %27, %76, %68
  ret void
}

declare dso_local i64 @STA_HASH(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
