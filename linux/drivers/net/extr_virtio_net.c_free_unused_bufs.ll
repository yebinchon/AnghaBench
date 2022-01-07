; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_free_unused_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_free_unused_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.TYPE_3__ = type { %struct.virtqueue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*)* @free_unused_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_unused_bufs(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.virtqueue*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %10 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %15 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.virtqueue*, %struct.virtqueue** %20, align 8
  store %struct.virtqueue* %21, %struct.virtqueue** %5, align 8
  br label %22

22:                                               ; preds = %37, %13
  %23 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %24 = call i8* @virtqueue_detach_unused_buf(%struct.virtqueue* %23)
  store i8* %24, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @is_xdp_frame(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @dev_kfree_skb(i8* %31)
  br label %37

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @ptr_to_xdp(i8* %34)
  %36 = call i32 @xdp_return_frame(i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %22

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %7

42:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %92, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %46 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %95

49:                                               ; preds = %43
  %50 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %51 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.virtqueue*, %struct.virtqueue** %56, align 8
  store %struct.virtqueue* %57, %struct.virtqueue** %6, align 8
  br label %58

58:                                               ; preds = %90, %49
  %59 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %60 = call i8* @virtqueue_detach_unused_buf(%struct.virtqueue* %59)
  store i8* %60, i8** %3, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %64 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @virt_to_head_page(i8* %68)
  %70 = call i32 @put_page(i32 %69)
  br label %90

71:                                               ; preds = %62
  %72 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %73 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %78 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @give_pages(%struct.TYPE_4__* %82, i8* %83)
  br label %89

85:                                               ; preds = %71
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @virt_to_head_page(i8* %86)
  %88 = call i32 @put_page(i32 %87)
  br label %89

89:                                               ; preds = %85, %76
  br label %90

90:                                               ; preds = %89, %67
  br label %58

91:                                               ; preds = %58
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %43

95:                                               ; preds = %43
  ret void
}

declare dso_local i8* @virtqueue_detach_unused_buf(%struct.virtqueue*) #1

declare dso_local i32 @is_xdp_frame(i8*) #1

declare dso_local i32 @dev_kfree_skb(i8*) #1

declare dso_local i32 @xdp_return_frame(i32) #1

declare dso_local i32 @ptr_to_xdp(i8*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_head_page(i8*) #1

declare dso_local i32 @give_pages(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
