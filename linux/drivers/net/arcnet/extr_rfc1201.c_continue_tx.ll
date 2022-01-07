; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1201.c_continue_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1201.c_continue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { %struct.Outgoing }
%struct.Outgoing = type { i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.arc_hardware }
%struct.TYPE_3__ = type { i64, %struct.arc_rfc1201 }
%struct.arc_rfc1201 = type { i32, i32, i32 }
%struct.arc_hardware = type { i32 }

@XMTU = common dso_local global i32 0, align 4
@RFC1201_HDR_SIZE = common dso_local global i32 0, align 4
@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"rfc1201 continue_tx: loading segment %d(+1) of %d (seq=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @continue_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @continue_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcnet_local*, align 8
  %7 = alloca %struct.Outgoing*, align 8
  %8 = alloca %struct.arc_hardware*, align 8
  %9 = alloca %struct.arc_rfc1201*, align 8
  %10 = alloca %struct.arc_rfc1201*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %13)
  store %struct.arcnet_local* %14, %struct.arcnet_local** %6, align 8
  %15 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %16 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %15, i32 0, i32 0
  store %struct.Outgoing* %16, %struct.Outgoing** %7, align 8
  %17 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %18 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.arc_hardware* %20, %struct.arc_hardware** %8, align 8
  %21 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %22 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.arc_rfc1201* %25, %struct.arc_rfc1201** %9, align 8
  %26 = load i32, i32* @XMTU, align 4
  %27 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @D_DURING, align 4
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %32 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %35 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %9, align 8
  %38 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @arc_printk(i32 %29, %struct.net_device* %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %42 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %48 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %52 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %50, %54
  %56 = inttoptr i64 %55 to %struct.arc_rfc1201*
  store %struct.arc_rfc1201* %56, %struct.arc_rfc1201** %10, align 8
  %57 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %58 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %2
  %62 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %63 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 2
  %66 = shl i32 %65, 1
  %67 = or i32 %66, 1
  %68 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %69 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %87

70:                                               ; preds = %2
  %71 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %72 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 1
  %75 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %76 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %9, align 8
  %78 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %81 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %9, align 8
  %83 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %86 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %70, %61
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %91 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %96 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %101 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = load %struct.arc_hardware*, %struct.arc_hardware** %8, align 8
  %106 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @load_pkt(%struct.net_device* %104, %struct.arc_hardware* %105, %struct.arc_rfc1201* %106, i32 %109, i32 %110)
  %112 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %113 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %117 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %120 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %125

124:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %123
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @load_pkt(%struct.net_device*, %struct.arc_hardware*, %struct.arc_rfc1201*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
