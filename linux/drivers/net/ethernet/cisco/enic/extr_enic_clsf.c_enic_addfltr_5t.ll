; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_clsf.c_enic_addfltr_5t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_clsf.c_enic_addfltr_5t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32 }
%struct.flow_keys = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.filter = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i8*, i32 }

@PROTO_TCP = common dso_local global i32 0, align 4
@PROTO_UDP = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@FILTER_IPV4_5TUPLE = common dso_local global i32 0, align 4
@FILTER_FIELDS_IPV4_5TUPLE = common dso_local global i32 0, align 4
@CLSF_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enic_addfltr_5t(%struct.enic* %0, %struct.flow_keys* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.enic*, align 8
  %6 = alloca %struct.flow_keys*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.filter, align 8
  store %struct.enic* %0, %struct.enic** %5, align 8
  store %struct.flow_keys* %1, %struct.flow_keys** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.flow_keys*, %struct.flow_keys** %6, align 8
  %11 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %24 [
    i32 129, label %14
    i32 128, label %19
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @PROTO_TCP, align 4
  %16 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 8
  br label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @PROTO_UDP, align 4
  %21 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EPROTONOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %88

27:                                               ; preds = %19, %14
  %28 = load i32, i32* @FILTER_IPV4_5TUPLE, align 4
  %29 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load %struct.flow_keys*, %struct.flow_keys** %6, align 8
  %31 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @ntohl(i32 %34)
  %36 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  store i8* %35, i8** %38, align 8
  %39 = load %struct.flow_keys*, %struct.flow_keys** %6, align 8
  %40 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @ntohl(i32 %43)
  %45 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  store i8* %44, i8** %47, align 8
  %48 = load %struct.flow_keys*, %struct.flow_keys** %6, align 8
  %49 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @ntohs(i32 %51)
  %53 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load %struct.flow_keys*, %struct.flow_keys** %6, align 8
  %57 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @ntohs(i32 %59)
  %61 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* @FILTER_FIELDS_IPV4_5TUPLE, align 4
  %65 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.enic*, %struct.enic** %5, align 8
  %69 = getelementptr inbounds %struct.enic, %struct.enic* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.enic*, %struct.enic** %5, align 8
  %72 = getelementptr inbounds %struct.enic, %struct.enic* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CLSF_ADD, align 4
  %75 = call i32 @vnic_dev_classifier(i32 %73, i32 %74, i32* %7, %struct.filter* %9)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.enic*, %struct.enic** %5, align 8
  %77 = getelementptr inbounds %struct.enic, %struct.enic* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %27
  %82 = load i32, i32* %7, align 4
  br label %85

83:                                               ; preds = %27
  %84 = load i32, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %24
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vnic_dev_classifier(i32, i32, i32*, %struct.filter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
